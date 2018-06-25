const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const DonationSchema = require ('../src/donation');

const GoodSchema = require('../src/good');
const DonatedGoodSchema = require('../src/donated_good');
const AddressSchema = require('../src/address');

const UserSchema = new Schema({
    email : String,
    password : String,
    created_at : String,
    last_login : String,
    first_login : String,
    //make this flags virtuals
    is_active : Boolean,
    is_banned : Boolean,
    is_donor : Boolean,
    donor_consent_signed_at : String,
    is_volunteer : Boolean,
    volunteer_consent_signed_at : String,
    is_carrier : Boolean,
    carrier_consent_signed_at : String,
    is_donee : Boolean,
    donee_consent_signed_at : String,
    is_manager : Boolean,
    manager_mandates : [
        {date_start : String,
         date_end : String}
    ],
    donations : [
                //materialized -- generating error
                //DonationSchema
                //referenced
                {type : Schema.Types.ObjectId,
                    ref: 'donation'}
                ],
    //assignments of the volunteer
    assignments : [{
        start : String,
        end : String,
        //include donation campaign, optional
        done : Boolean,
        feedback : {
            type : String,
            enum: ["ok","fail","loss"]
            }
        }],
    address : //materialized
              // AddressSchema,
        //referenced  
                { 
                    type : Schema.Types.ObjectId,
                    ref: 'address'
                },
    phone_number : [{
                        phone_type : {
                                    type: String,
                                    enum: ["work","home","mobile"]},
                        phone_number : String
                    }]
    //deliveries of the volunteer
    //transports of the carrier
    //deliveries of the donee
})
//console.log("show user schema");
//console.log(UserSchema);
const User = mongoose.model('user', UserSchema);
module.exports = UserSchema;