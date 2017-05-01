class Region < ActiveRecord::Base
  # has many houses
  has_many :houses
end
