const assert = require('assert');
const DonationSchema = require('../../src/donation');

//forced the schema import to get address constructor
const mongoose = require('mongoose');
const Donation = mongoose.model('donation', DonationSchema);

console.log("reading test");

describe('reading donations out of a database', ()=>{
    //creating a donation from john
    beforeEach((done) => {
        small_donation_from_john = new Donation(
                {"donor_name":"john",
                 "donation_message" : "this message is a test message"}
        );
        small_donation_from_john.save()
        .then(() => {
            done();
        });
    });
  
    it('finding all donations from the donor John',(done)=>{
        //checking if the user was created
        Donation.find({"donor_name":"john"})
            .then((donations)=>{
              assert(donations[0]._id.toString() === small_donation_from_john._id.toString());
              done();
        });
        
        
        
    });
    it('finding one donation with a particular id',(done)=>{
       Donation.findOne({_id : small_donation_from_john._id})
        .then((donation) => {
           donation.name==="john";
           done();
       });
    });
});