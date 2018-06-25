const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const DonatedGoodSchema = require('../src/donated_good');
const UserSchema = require('../src/user');
const CheckSchema = require('../src/check');

const InventorySchema = new Schema({
    created_at : String,
    closed_at : String,
    donated_goods : [{
            type: Schema.Types.ObjectId,
            ref: 'donated_good'
            }],
    movements : [{
        operation : {type: String,
                    enum : ['receipt','dispatch']},
        donated_good : {
                    type: Schema.Types.ObjectId,
                    ref: 'donated_good'
                    }
                }],
    checks : [CheckSchema]
});
const Inventory = mongoose.model('inventory', InventorySchema);
module.exports = InventorySchema;