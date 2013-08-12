# 3DShop implementation

# user = User.create params[:email]
# 
# stl = user.upload_stl()
# slicer = Slicer.new stl
# gcode = slicer.generate_gcode
# App.send user, gcode.cost # gcode.cost.class => Gcode::Cost
# - page with spinner
# - email > link to page with spinner
# 
# ### good case (cost is ok)
# 
# user.pay gcode
# 
#  - payment (paypal) integration
# 
# 
# 
# > shipping
# > returns
# 
# 
# ] Shop.slicer_configs = {...}
# 

# open your shop
# load your cura slicing profile(s)
# give customers instant estimate of price (and time) + shipping 

require_relative "config/env"

class Shop < Sinatra::Base
  SLICINGS = []
  
  def add_slicing(slicing)
    slicing.id = SLICINGS.length
    SLICINGS << slicing
  end

  post "/upload" do
    stl_name = File.basename params[:stl][:filename], ".stl"
    stl = params[:stl][:tempfile]
    slicing = Slicer.new(stl_name, stl).slice
    add_slicing slicing
    redirect "/slicings/#{slicing.id}"
  end
  
  get "/slicings/*" do |id|
    @slicing = SLICINGS[id.to_i]
    halt 404, "Slicing not found" unless @slicing
    haml :slicing
  end
  
  get "/" do
    haml :index
  end
end
