class Address < ApplicationRecord
  belongs_to :public_place
  belongs_to :private_place_type
  has_and_belongs_to_many :people
end
