require 'net/https'
require 'json'
require 'pp' # dev

class FbAlbums
  HOST = "https://graph.facebook.com"
  USER = "3dmaking"
  ALBUMS_URL = "#{HOST}/3dmaking/albums"
  URL = "#{HOST}/%s" # id of the resource
  PHOTOS_URL = "#{HOST}/%d/photos" # album_id

  def albums
    url = ALBUMS_URL
    albums = get url
    albums = blizz_albums albums
    albums.each do |album|
      cover = get_resource album.cover_photo
      cover = blizz_photo cover
      album.cover  = cover
      album.photos = photos album.id
    end
  end

  def photos(album_id)
    url = PHOTOS_URL % album_id
    photos = get url
    blizz_photos photos
  end

  def get_resource(id)
    url = URL % id
    get url
  end

  private

  # blizz

  def blizz_photo(element)
    Blizz.load Photo, element, Photo::FIELDS
  end

  def blizz_photos(array)
    array = array["data"]
    new_array = array.map do |element|
      Blizz.load Photo, element, Photo::FIELDS
    end
    new_array
  end

  def blizz_albums(array)
    array = array["data"]
    new_array = array.map do |element|
      Blizz.load Album, element, Album::FIELDS
    end
    new_array
  end

  # get & parse

  def get(url)
    resp = get_url url
    JSON.parse resp.body
  end

  def get_url(url)
    uri = URI.parse url
    http = Net::HTTP.new uri.host, uri.port
    http.use_ssl      = true
    http.verify_mode  = OpenSSL::SSL::VERIFY_NONE

    req = Net::HTTP::Get.new uri.request_uri
    http.request req
  end
end

# fba = FbAlbums.new
# p fba.albums
# pp fba.photos 369393646497092