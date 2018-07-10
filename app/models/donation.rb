class Donation < ApplicationRecord
 belongs_to :donor 
 has_many :volunteer 
 has_many :goods, inverse_of: :donation, dependent: :destroy
 accepts_nested_attributes_for :goods, reject_if: :all_blank, allow_destroy: true
    
 def status
        "Not available"
 end
end
