class Address < ApplicationRecord
  belongs_to :public_place
  belongs_to :private_place_type
end
