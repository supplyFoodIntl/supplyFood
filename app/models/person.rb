class Person < ApplicationRecord
  belongs_to :person_type
  belongs_to :ic_type
end
