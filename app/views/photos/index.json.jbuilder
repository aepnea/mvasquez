json.array!(@photos) do |photo|
  json.extract! photo, :id, :name, :author, :date, :description, :image
  json.url photo_url(photo, format: :json)
end
