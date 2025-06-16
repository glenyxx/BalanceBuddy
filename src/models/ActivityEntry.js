const mongoose = require('mongoose');

const ActivityEntrySchema = new mongoose.Schema({
  userId: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
  date: { type: Date, default: Date.now },
  steps: { type: Number, default: 0 },
  calories: { type: Number, default: 0 },
  minutes: { type: Number, default: 0 },
  notes: { type: String }
});

module.exports = mongoose.model('ActivityEntry', ActivityEntrySchema);