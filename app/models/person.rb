class Person < ApplicationRecord
  belongs_to :person_type
  belongs_to :ic_type
  has_and_belongs_to_many :addresses
  accepts_nested_attributes_for :addresses, allow_destroy: false
end
