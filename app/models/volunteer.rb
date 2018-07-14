class Volunteer < ApplicationRecord  
    def getStartRank
        @@donor_start_Rank||="#{SupplyFoodConfiguration.find_by(name: "Volunteer start rank").description}"
    end
end
