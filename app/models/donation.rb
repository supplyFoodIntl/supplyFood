class Donation < ApplicationRecord
 belongs_to :donor 
 belongs_to :volunteer, optional: true 
 belongs_to :supplier, optional: true 
 has_many :goods, inverse_of: :donation, dependent: :destroy
 accepts_nested_attributes_for :goods, reject_if: :all_blank, allow_destroy: true
    

 def status
    #   Calculate the current status of a donation based on the following rules :
    #   open - no supplier nor volunteer
    #   assigned - no supplier but volunteer
    #   scheduled - supplier and volunteer
    #   collected - has supply
    #   stored - has inventory
    #   to delivery - has delivery
    #   delivering - has some good delivered
    #   delivered - has all goods delivered
     status_return="Not available"
     if self.supplier.nil? && self.volunteer.nil?
         status_return = "open"
     end
     status_return
 end
    
end
