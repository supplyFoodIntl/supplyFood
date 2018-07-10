class Donor < ApplicationRecord
    belongs_to :user
    has_many :donations
    
    def getStartLevel
        @@donor_start_level ||="#{SupplyFoodConfiguration.find_by(name: "Donor start level").description}"
    end
end
