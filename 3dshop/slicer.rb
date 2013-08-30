class Slicing
  attr_accessor :id, :file, :command, :output, :tempfile
  
  def initialize(file, tempfile)
    @file     = file
    @tempfile = tempfile
  end
  
  def total_cost
    filament_cost_to_client + printing_time_cost 
  end
  
  def printing_time_cost
    # 1h = 5 euro
    printing_time / 60 * 4
  end
  
  def filament_cost_to_client
    filament_cost * 15
  end
  
  def filament_cost # in euro
    # 15 cent per meter (bought at 16 al kg)
    filament / 1000 * 15 / 100
  end
  
  def printing_time # in minutes
    match(:print_time).to_f / 60
  end
  
  def filament_meters
    filament / 1000
  end
  
  def filament # in mm
    match(:filament).to_f
  end
  
  private
  
  def match(what)
    what = what.to_s.gsub(/_/, " ")
    match = @output.match(/#{what.capitalize}: (.+)\n/)
    match[1] if match
  end
end

class Slicer
  @@path = PATH || File.expand_path("../../", __FILE__)
  
  def initialize(stl, tempfile)
    @slicing = Slicing.new stl, tempfile
  end
  
  def slice
    file = @slicing.file
    tempfile = @slicing.tempfile
    `cp #{tempfile.path} #{@@path}/tmp/#{file}.stl`
    
    # Cura
    slicer = "/Applications/Cura/Cura.app/Contents/Resources/CuraEngine"
    profile = ""
    # profile = "-s layer_height=0.3 -s wall_thickness=1.2 -s solid_layer_thickness=1.2 -s fill_density=35 -s nozzle_size=0.4 -s print_speed=55 -s filament_diameter=2.9 -s travel_speed=150.0 -s bottom_layer_speed=20 -s infill_speed=0.0 -s cool_min_layer_time=5 -s cool_min_feedrate=10"
    profile = "-s layerThickness=300 -s filamentDiameter=3000 -s extrusionWidth=400 -s filamentFlow=50 -s printSpeed=50 -s infillSpeed=50 -s moveSpeed=50"
    
    cmd = "#{slicer} -v -o #{@@path}/public/gcodes/#{file}.gcode #{profile} #{@@path}/tmp/#{file}.stl"
    @slicing.command = cmd
    puts "executing: #{cmd}"
    out = `#{cmd}` # --slice is -s
    puts "SLICING:\n#{out}"
    @slicing.output = out
    @slicing
    
    # Slic3r
    # slicer = "/Applications/Slic3r.app/Contents/MacOS/slic3r"
    # profile = ""
    # # profile = "--load #{@@path}/conf/antani.ini"
    # puts `#{slicer} -o #{@@path}/output/3dmaking_out.gcode #{profile}`
  end
end

# example usage:

# stl = ""
# slicer = Slicer.new stl
# gcode = slicer.generate_gcode


# Cura install:

# to be documented


# Slic3r install:

# # download slicer (slic3r) [to run in this folder]
# 
# SLICER_VERSION=0-9-10b
# SLICER_NAME=slic3r-linux-x86_64-$SLICER_VERSION
# wget http://dl.slic3r.org/linux/$SLICER_NAME.tar.gz
# tar xvf $SLICER_NAME.tar.gz
# rm $SLICER_NAME.tar.gz
# mv Slic3r slicer
# cd slicer
# ls
# ./bin/slicer
# 
# # osx
# # /Applications/Slic3r.app/Contents/MacOS/slic3r 