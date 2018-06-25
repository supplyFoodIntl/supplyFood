const assert = require('assert');
const DonationSchema = require('../../src/donation');

//forced the schema import to get address constructor
const mongoose = require('mongoose');
const Donation = mongoose.model('donation', DonationSchema);

console.log("Sub good test");

describe ('Sub Goods', (done) => {
   it('can create a sub good in a donation',(done)=>{
        const donation_to_create = new Donation({
            donor_name : 'daniel',
            offered_goods :[{good_type     : "human food",
                     quantity      : 2,
                     measure_unity : 'kg'}]
            });
        donation_to_create.save()
            .then(() => Donation.findOne({donor_name : 'daniel'}))
            .then((donation) => {
                assert(donation.offered_goods[0].good_type==="human food");
                done();
            });
        
   }); 
    
    
    it('can add a sub good in a donation',(done)=>{
     //create a first donation
        const donation_to_create = new Donation({
            donor_name : 'daniel',
            offered_goods : []
            });
        //add a good to a donation
        donation_to_create.save()
        .then(() => Donation.findOne({donor_name : 'daniel'}))
        .then((donation_to_check) => {
            donation_to_check.offered_goods.push ({good_type: 'human food'});
            return donation_to_check.save();
        })
    //check if the good was added
        //find the saved donation
        .then(() =>Donation.findOne({donor_name : 'daniel'}))
        .then((donation_with_new_good_to_check) => {
            assert(donation_with_new_good_to_check.offered_goods[0].good_type==='human food');
            return donation_with_new_good_to_check;
        })
    //add a new good, animal food,  to the current donation
        .then((donation_with_human_food_to_check) => {
            donation_with_human_food_to_check.offered_goods.push ({good_type: 'animal food'});
            return donation_with_human_food_to_check.save();
        })
    //check if the good was added
        //find the saved donation
        .then(() =>Donation.findOne({donor_name : 'daniel'}))
        //check if the new good was added
        .then((donation_with_animal_food_to_check) => {
            assert(donation_with_animal_food_to_check.offered_goods[1].good_type==='animal food');
            done();
        });
     }); 
    
    it ('can remove a sub good in a donation',(done)=>{
       //create a donation with no goods
        const donation_to_create = new Donation({
            donor_name : 'daniel',
            offered_goods : [{good_name: 'human_food'}]
            });
        //add a good to a donation
        donation_to_create.save()
            .then(() =>
                //get the user
                Donation.findOne({donor_name : 'daniel' }))
            .then((donation_to_remove_good) =>{
                const good_to_remove = donation_to_remove_good.offered_goods[0];
                good_to_remove.remove();
                return donation_to_remove_good.save();
            })
            .then ((donation_with_no_good)=>{
                assert(donation_with_no_good.offered_goods.length===0);
                done();
            });
    });
    
});