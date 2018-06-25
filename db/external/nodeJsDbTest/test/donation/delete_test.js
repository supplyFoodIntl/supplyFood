const assert = require('assert');
const DonationSchema = require('../../src/donation');

//forced the schema import to get address constructor
const mongoose = require('mongoose');
const Donation = mongoose.model('donation', DonationSchema);
console.log("delete_test");

describe('canceling a donation', () =>{
    let  donation_to_cancel;
    
    beforeEach((done) =>{
        donation_to_cancel = new Donation({donor_name:"daniel",
                                        comment:"donor to be deleted"});
        donation_to_cancel.save()
            .then(() => done());
    });
    
    it ('model instance remove',(done) => {
        donation_to_cancel.remove()
            .then(() => Donation.findOne({donor_name:"daniel"}))
            .then((donation) => {
            assert(donation===null);
            done();
        });
    });
    
    it ('class method remove', (done) => {
        Donation.findOneAndRemove({donor_name:"daniel"})
            .then(() => Donation.findOne({donor_name:"daniel"}))
            .then((donation) => {
            assert(donation===null);
            done();
        });
    });
    
    it ('class method findByIdAndRemove', (done) => {
        Donation.findByIdAndRemove(donation_to_cancel._id)
            .then(() => Donation.findOne({donor_name:"daniel"}))
            .then((donation) => {
            assert(donation===null);
            done();
        });
    });
    

});