class SupplyFoodConfiguration < ApplicationRecord
    
    def self.get_favourite_location
        get_favourite_country
        get_favourite_state
        get_favourite_city
        @@favourite_location ||="#{SupplyFoodConfiguration.find_by(name: "Country").description}/#{SupplyFoodConfiguration.find_by(name: "State").description}/#{SupplyFoodConfiguration.find_by(name: "City").description}"
    end

    def self.get_favourite_country
        @@favourite_country ||="#{SupplyFoodConfiguration.find_by(name: "Country").description}"
    end
    def self.get_favourite_state
        @@favourite_state ||="#{SupplyFoodConfiguration.find_by(name: "State").description}"
    end
    def self.get_favourite_city
        @@favourite_city ||="#{SupplyFoodConfiguration.find_by(name: "City").description}"
    end
end
