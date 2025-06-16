const mongoose = require('mongoose');

const DigitalTwinStateSchema = new mongoose.Schema({
  userId: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
  date: { type: Date, default: Date.now },
  moodScore: { type: Number, default: 50 },
  activityLevel: { type: String, default: 'Medium' },
  sleepGoal: { type: Number, default: 0 },
  mindfulnessMinutes: { type: Number, default: 0 },
  summary: { type: String },
  tips: { type: [String], default: [] }
});

module.exports = mongoose.model('DigitalTwinState', DigitalTwinStateSchema);