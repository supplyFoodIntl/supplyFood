const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const Donation = require ('../src/donation');

const AddressSchema = new Schema({
    line_one :  String,
    line_two :  String,
    zip_code : String
})

const Address = mongoose.model('address', AddressSchema);
module.exports = AddressSchema;
