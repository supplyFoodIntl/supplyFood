class Supplier < ApplicationRecord
  belongs_to :person
  belongs_to :level
end
