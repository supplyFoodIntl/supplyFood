const assert = require('assert');
const DonationSchema = require('../../src/donation');

//forced the schema import to get address constructor
const mongoose = require('mongoose');
const Donation = mongoose.model('donation', DonationSchema);

console.log("validation test");

describe('validate a donation ', () =>{
    it("requires a donor name", () => {
        const donation = new Donation({donor_name: undefined});
        const validationResult = donation.validateSync();
        const message =  validationResult.errors.donor_name.message;
        assert.message === "Name is required.";
    });
    
    it("donor name must be longer than 2 characters", () => {
        const donation = new Donation({donor_name: "Al"});
        const validationResult = donation.validateSync();
        const message =  validationResult.errors.donor_name.message;
        assert.message === "Donor name must be longer than 2 characters.";
    });
    
    it ('disallows invalid records from being saved',(done) => {
        donation_to_err = new Donation ({donor_name:"al"});
        donation_to_err.save()
            .catch((validationResult) => {
                const {message} =  validationResult.errors.donor_name;
                assert.message === "Donor name must be longer than 2 characters.";
                done();
        });
    });
    
});