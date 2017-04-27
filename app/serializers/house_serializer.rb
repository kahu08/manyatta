class HouseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :telephone, :street, :rules, :ammenities, :price
end
