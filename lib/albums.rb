class Albums
  include Blizz::Resource

  def self.all
    FbAlbums.new.albums
  end
end