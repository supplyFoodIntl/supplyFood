const mongoose = require('mongoose');

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
//clean the database
beforeEach((done) => {
    const {donations,storages,inventories,donated_goods,users} = mongoose.connection.collections;
    donations.drop(() => {
         storages.drop(() => {
             inventories.drop(() => {
                 donated_goods.drop(() => {
                     users.drop(() => {
                        done();
                     });
                 });
             });
        });
    });
});


