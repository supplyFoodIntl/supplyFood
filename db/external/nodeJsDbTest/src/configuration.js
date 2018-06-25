const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const ConfigurationSchema = new Schema({
    address_types : {type: String,
                    enum : [
                        "Home","Business","Billing","Shipping"
                    ]},
    assignment_types : { type: String,
                    enum : ["Collect","Store","Delivery","Lost","Fundraise"]},
    site_configurations : {
        name : String,
        description : String,
        value : Number,
        html : String
    },
    id_card_type : {
        type : String,
        enum : ["National ID Card","Social Security Number","Passport","Driver's license"]
    },
    good_types : {
        name : String,
        derived_food_type : String
    }
                        
    });

module.exports = ConfigurationSchema;