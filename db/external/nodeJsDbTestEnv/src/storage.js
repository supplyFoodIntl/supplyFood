const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const InventorySchema = require('../src/inventory');
const DonatedGoodSchema = require('../src/donated_good');

const StorageSchema = new Schema({
    created_at : String,
    address : {
            type : Schema.Types.ObjectId,
            ref: 'address'
    },
    managed_by : {
                type: Schema.Types.ObjectId,
                ref: 'user'
            },
    inventories : [{ status: {
                        type: String,
                        enum :["created","opening","cleaning","ready","closed","removed"]
                    },
                    //current_strategy, inventory embedded on storage, commenting the association the a inventory collection
//                    inventory: {
//                        type: Schema.Types.ObjectId,
//                        ref: 'inventory'
//                    },
                    inventory : InventorySchema,
                    changes: {start_change : String,
                              end_change : String,
                              status_before : String,
                              status_after : String,
                              changed_by : {type: Schema.Types.ObjectId,
                                            ref: 'user'}
                             }
                   }],
    full_checks : [{
      date_check : String,
      checked_by : {
                type: Schema.Types.ObjectId,
                ref: 'user'
            }
    }]
});
const Storage = mongoose.model('storage', StorageSchema);
module.exports = StorageSchema;
module.exports = Storage;