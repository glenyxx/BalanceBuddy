const mongoose = require('mongoose');

const MoodEntrySchema = new mongoose.Schema({
  userId: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
  date: { type: Date, default: Date.now },
  mood: { type: String, required: true }, // E.g., 'Happy', 'Sad', 'Okay', 'Annoyed', 'Excited', 'Joyful'
  notes: { type: String }
});

module.exports = mongoose.model('MoodEntry', MoodEntrySchema);