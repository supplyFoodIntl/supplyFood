const assert = require('assert');
const DonationSchema = require('../../src/donation');

//forced the schema import to get address constructor
const mongoose = require('mongoose');
const Donation = mongoose.model('donation', DonationSchema);

console.log("update test");

describe('update a donation', () =>{
    let  donation_to_update;
    
    beforeEach((done) =>{
        donation_to_update = new Donation({donor_name:"daniel",
                                        comment:"donor to be deleted",
                                          max_completion: 0});
        donation_to_update.save()
            .then(() => done());
    });
    
    function assertName(PromiseOperation, DoneOperation){
            PromiseOperation
            .then(()=>Donation.find({}))
            .then((donations) => {
               assert(donations.length === 1) ;
               assert(donations[0].donor_name==='thiago');
               DoneOperation();
            });
        
    };
    
    it("instance type using set n save", (done) => {
        donation_to_update.set("donor_name","thiago");
        assertName(donation_to_update.save(), done);

    });
    
    it("a model instance can update",(done) => {
        assertName(donation_to_update.update({'donor_name':'thiago'}), done);

    });
    
    it("a class can update",(done) => {
        assertName(Donation.update({'donor_name':'daniel'},{donor_name :'thiago'}),
                   done);

    });
    
    it("a class can update one record ",(done) => {
        assertName(Donation.findOneAndUpdate({'donor_name':'daniel'},{donor_name :'thiago'}),
                   done);

    });
    
    it("a class can finda a record with an id update  ",(done) => {
        assertName(Donation.findByIdAndUpdate(donation_to_update._id,{donor_name :'thiago'}),
                   done);

    });


    it("a donation can have their completion incremented by 10 ", (done) => {
        Donation.update({donor_name: 'daniel'}, {$inc: {max_completion:10}})
        .then(()=> Donation.findOne({donor_name:'daniel'}))
        .then((donation) => {
            assert(donation.max_completion ===10);
            done();    
            });
    });
    
});