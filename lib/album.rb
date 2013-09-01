class Album
  include Blizz::Resource

  FIELDS = [:id, :name, :link, :count, :cover_photo, :description, :created_time, :updated_time]

  attr_accessor :photos, :cover
  FIELDS.map { |field| attr_accessor field }
end