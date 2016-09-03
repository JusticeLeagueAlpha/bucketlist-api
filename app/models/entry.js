'use strict';

const mongoose = require('mongoose');

// let testDate = (new Date()).toISOString();

const entrySchema = new mongoose.Schema({

  goal: {
    type: String,
    required: true,
  },

  description: {

    type: String,
    required: false,
  },

  finishBy: {
    type: String, //change this to Date with _ _ _ _- _ _- _ _  format virtual might be needed here 
    required: false,
  },

  location: {
    type: String,
    required: false,
  },

  url: {
    type: String,
    required: false,
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
}, {
  timestamps: true,
  // toJSON: { virtuals: true },
});


const Entry = mongoose.model('Entry', entrySchema);

module.exports = Entry;
