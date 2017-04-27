json.extract! house, :id, :name, :description, :telephone, :street, :rules, :ammenities, :price, :created_at, :updated_at
json.url house_url(house, format: :json)
