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

         function addDonation(event) {
            const clientPromise = stitch.StitchClientFactory.create('test_stitch-tyysi');

            let client;
            let db;

            clientPromise.then(stitchClient => {
            client = stitchClient;
            db = client.service('mongodb', 'mongodb-atlas').db('testStitch');}

             
             var donation_to_add =  JSON.parse(                               
                '{ 
                    available_start : ISODate("2017-06-24T00:58:22.000+0000"), 
                    available_end : ISODate("2018-04-30T15:06:53.000+0000"), 
                    created_at : ISODate("2017-10-28T15:19:46.000+0000"), 
                    donor_name : "Janessa Hinken", 
                    donated_by : ObjectId("5b303accf6a0af1a7c001590"), 
                    donation_message : "Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.", 
                    offered_goods : [
                        {
                            good_type : "Black kite", 
                            quantity : 533.53, 
                            measure_unit : "Mililiter"
                        }, 
                       
                    ], 
                    completion : NumberInt(76), 
                    max_completion : NumberInt(120), 
                    status : "open", 
                    retrieve_address : {
                        lineOne : "77181 Burrows Plaza", 
                        lineTwo : "910 John Wall Street", 
                        lineThree : "94814 Derek Avenue"
                    }, 
                    phone_number : "562-934-1539"
                }'');

             db.collection("donations").insertOne({owner_id : client.authedId(), donation: donation_to_add});
            alert ('inserted');
         };

const Donation = mongoose.model('donation', DonationSchema);
module.exports = Donation;
module.exports = DonationSchema;