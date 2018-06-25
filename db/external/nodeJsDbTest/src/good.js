const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const Donation = require ('../src/donation');

const GoodSchema = new Schema({
    good_type : {
        type: String,
        validate: {
            validator: (good_type) => good_type.length > 2,
            message : 'Good Type must be longer than 2 characters.'
        }
    },
    quantity: Number,
    measure_unity: String
})

const Good = mongoose.model('good', GoodSchema);
module.exports = GoodSchema;