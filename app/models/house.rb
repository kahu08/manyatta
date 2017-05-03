class House < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  ratyrate_rateable
  belongs_to :user
end
