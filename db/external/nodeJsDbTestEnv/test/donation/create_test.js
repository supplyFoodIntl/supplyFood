const assert = require ('assert');
const DonationSchema = require ('../../src/donation');
//forced the schema import to get address constructor
const mongoose = require('mongoose');
const Donation = mongoose.model('donation', DonationSchema);
console.log("create_test");

describe('Creating donations', ()=>{
    it('saves a donation',(done)=>{
        const small_donation = new Donation({"donor_name": "john" , "donation_message" : 'Please ring the bell three times that i will send a courier to give you guy the donation'});
        small_donation.save()
        .then(() => {
            //has the donation been saved?
            assert(!small_donation.isNew);
            done();
        });
    });
});

// creating a inventory