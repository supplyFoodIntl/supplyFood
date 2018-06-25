const assert = require ('assert');
//const Donation = require ('../src/donation');
const Storage = require ('../../src/storage');


//const DonatedGood = require ('../src/donated_good');
const AddressSchema = require ('../../src/address');
const UserSchema = require ('../../src/user');
const InventorySchema = require ('../../src/inventory');

//forced the schema import to get address constructor
const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const Address = mongoose.model('address', AddressSchema);
const User = mongoose.model('user', UserSchema);


console.log("association test");

describe('associations', () =>{
    let  storage_to_associate, address_to_associate,user_to_associate;
    
    beforeEach((done) =>{
        storage_to_associate = new Storage({created_at :"20180623"});
        user_to_associate = new User({email : "dribeiro@example.com"});
        address_to_associate = new Address({line_one : "350 5th Ave",
                                           line_two : "midtown manhatan",
                                           line_three : "New York, NY 10118, USA"}
                                          );
        storage_to_associate.address= address_to_associate;
        storage_to_associate.managed_by= user_to_associate;
        //*TODO* add an inventory with 1 good and 1 check
            //*todo* add 1 changes on the inventory
        
        Promise.all([user_to_associate.save(),address_to_associate.save(),storage_to_associate.save()])
        .then(()=>done());
//        console.log ("user_to_associate");
//        console.log (user_to_associate);
//        console.log ("address_to_associate");
//        console.log (address_to_associate);
    });
    
    it ('saves a relation between storage and address',(done) => {
        Storage.findOne({created_at:"20180623"})
            .populate('address')
            .then((storage) => {
            console.log ("storage");
            console.log (storage);
            assert(storage.address.line_one==="350 5th Ave");
            done();
        });
    });
    
    it ('saves a the full storage tree',(done) => {
        Storage.findOne({created_at:"20180623"})
            .populate('managed_by')
            .populate('address')
            .then((storage) => {
                console.log ("storage");
                console.log (storage);
                assert(storage.address.line_one==="350 5th Ave");
                done();
        });
    });
    

});