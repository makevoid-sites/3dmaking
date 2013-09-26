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

  get "/printer_3dm1" do
    haml :printer_3dm1
  end

  get "/albums/*" do |album|
    @album = albums.find{ |alb| alb.name_url == album }
    haml :album
  end

  get "/team" do
    haml :team
  end

  get "/press" do
    haml :press
  end

  get "/reprap_project" do
    haml :reprap_project
  end

  get "/contact" do
    haml :contact
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

    filtered = ["profile_pictures", "cover_photos"]
    albums.reject!{ |a| filtered.include? a.name_url }
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