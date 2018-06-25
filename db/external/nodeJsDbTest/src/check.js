const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const CheckSchema = new Schema({
      date_check : String,
      checked_by : {
                type: Schema.Types.ObjectId,
                ref: 'user'
            },
      check_result : {type : String,
                     enum : ['ok','broken','spoiled','expiration date','missed']}
    });

module.exports = CheckSchema;