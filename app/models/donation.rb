class Donation < ApplicationRecord
 belongs_to :donor 
 belongs_to :volunteer
    
  has_many :goods, inverse_of: :donation, dependent: :destroy
  accepts_nested_attributes_for :goods, reject_if: :all_blank, allow_destroy: true
end
