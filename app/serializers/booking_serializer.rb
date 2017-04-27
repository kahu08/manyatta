class BookingSerializer < ActiveModel::Serializer
  attributes :id, :checkin, :checkout, :occupancy
end
