const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const Donation = require ('../src/donation');


const DonatedGoodSchema = new Schema({
    splited: Boolean,
    splited_by : {
            type : Schema.Types.ObjectId,
            ref: 'user'
    },
    splits : [{split_date : String,
               new_donated_good : Schema.Types.ObjectId}],        
    delivered: Boolean,
    delivery_date: String,
    donated_by : {type : Schema.Types.ObjectId,
                ref: 'user'},
    collection_date: String,
    collected_by: {type : Schema.Types.ObjectId,
                ref: 'user'},
    arrival_date: String,
    arrival_by : {type : Schema.Types.ObjectId,
                ref: 'user'},
    checks : [CheckSchema],
    storage_date: String,
    stored_by : {type : Schema.Types.ObjectId,
                ref: 'user'},
    departure_date: String,
    departure_by : {type : Schema.Types.ObjectId,
                ref: 'user'},
    delivered_by : {type : Schema.Types.ObjectId,
                ref: 'user'},    
    donated_to : [{type : Schema.Types.ObjectId,
                ref: 'user'}]

    //add delivery collection to set the final destination of the good
});

const DonatedGood = mongoose.model('donated_good', DonatedGoodSchema);
module.exports = DonatedGoodSchema;
