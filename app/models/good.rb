class Good < ApplicationRecord
  belongs_to :measure_unit
  belongs_to :good_type
  belongs_to :donation
  #belongs_to :address
end
