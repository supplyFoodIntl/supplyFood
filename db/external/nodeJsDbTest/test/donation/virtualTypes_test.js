const assert = require('assert');
const DonationSchema = require('../../src/donation');

//forced the schema import to get address constructor
const mongoose = require('mongoose');
const Donation = mongoose.model('donation', DonationSchema);

console.log("virtual types test");

describe ('virtual types', (done) => {
   it('goodCount returns the number of goods donated',(done)=>{
        const donation_to_create = new Donation({
            donor_name : 'daniel',
            offered_goods :[{good_type     : "human food",
                     quantity      : 2,
                     measure_unity : 'kg'}]
            });
       
        donation_to_create.save()
            .then(() => Donation.findOne({donor_name : 'daniel'}))
            .then((donation) => {
                assert(donation.offered_good_count===1);
                done();
            });
   });
    
});