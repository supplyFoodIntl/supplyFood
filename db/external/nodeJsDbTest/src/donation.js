const mongoose = require('mongoose');
const Schema = mongoose.Schema;

//get schemas
const GoodSchema = require('../src/good');
const DonatedGoodSchema = require('../src/donated_good');
const AddressSchema = require('../src/address');
const UserSchema = require('../src/user');


const DonationSchema = new Schema({
    available_start : String,
    available_end : String,
    created_at : String,
    donor_name : {type:String,
                      validate: {
                          validator: (name) => name.length > 2,
                          message: 'Name must be longer than 2 characters.'
                        },
                        required: [true, 'Name is required.']
                 },//remove
    donated_by : {
            type: Schema.Types.ObjectId,
            ref: 'user'
            },
    donation_message: String,
    offered_goods: [GoodSchema],
    donated_goods : [{
            type: Schema.Types.ObjectId,
            ref: 'donated_good'
            }],
    completion: Number,
    max_completion : {
        type: Number,
        default: 120},
    status : {type : String, 
              enum: ["open", "sent", "schedule_by_call_center", "schedule_confirmed","collected", "carried","checked", "stored","checked_to_deliver", "sent_to_deliver", "delivered", "consumed", "evaluated"]},
    error_status: {type : String ,
                   enum: ["schedule","collection", "carrier","check", "store","check_to_deliver", "send", "deliver", "consume", "evaluation"]},
    retrieve_address: AddressSchema,
    phone_number: String
})
// virtual good_count: Number,
DonationSchema.virtual('offered_good_count').get(function(){
    return this.offered_goods.length;
});
const Donation = mongoose.model('donation', DonationSchema);
module.exports = Donation;
module.exports = DonationSchema;