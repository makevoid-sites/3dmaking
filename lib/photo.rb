class Photo
  include Blizz::Resource

  FIELDS = [:id, :picture, :source, :height, :width, :images, :link, :icon, :created_time, :updated_time]
  FIELDS.map { |field| attr_accessor field }
end