
const mongoose = require('mongoose');
const Donation = require ('../src/donation');

mongoose.Promise = global.Promise;

//open
before((done) => {
//mongoose.connect('mongodb://sfTest:test1234@ds163300.mlab.com:63300/supplyfood');
mongoose.connect('mongodb://localhost/supplyfoodTestMongo');
  mongoose.connection
    .once('open', () => { done(); })
    .on('error', (error) => {
      console.warn('Warning', error);
    });
})
//hook
beforeEach((done) => {
    mongoose.connection.collections.donations.drop(() => {
        done();
  });
});

function makeRandomString(size) {
  var text = "";
  var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

  for (var i = 0; i < size; i++)
    text += possible.charAt(Math.floor(Math.random() * possible.length));

  return text;
}

function create_dummy (countDummies){
    
        var dummy_donation = new Donation(
                {"donor_name": makeRandomString(100) ,
                 "donation_message" : makeRandomString(200)});
        dummy_donation.save();
};

console.log("dummy creation");
create_dummy (1000);

