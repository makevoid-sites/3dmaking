path = File.expand_path "../", __FILE__
require "#{path}/config/env"

class TDMaking < Sinatra::Base

  before do
    env = request.env
    @host = env["REMOTE_HOST"]
    if ENV["RACK_ENV"] == "development"
      @host = "#{@host}:#{env["SERVER_PORT"]}"
    end
    
    host = env["SERVER_NAME"]
    en = host.split(".")[0] == "en"
    @lang = en ? "en" : "it"
  end

  get "/" do
    haml :index
  end

  get "/en" do
    haml :index
  end

  get "/albums/*" do |album|
    @album = albums.find{ |alb| alb.name_url == album }
    haml :album
  end

  # datas

  def albums
    path = "#{PATH}/db/albums.yaml"
    albums = if File.exists? path
      YAML.load File.read path
    else
      albums = Albums.all
      yaml = YAML.dump albums
      File.open(path, "w"){ |f| f.write yaml }
      albums
    end

     albums
  end

  # lang helpers

  def en?
    @lang == "en"
  end

  def t(en, it)
    en? ? en : it
  end

end