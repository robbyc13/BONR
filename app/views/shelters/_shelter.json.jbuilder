json.extract! shelter, :id, :name, :address, :contact_url, :hours_url, :map_url, :latitude, :longitude, :phone, :email, :created_at, :updated_at
json.url shelter_url(shelter, format: :json)