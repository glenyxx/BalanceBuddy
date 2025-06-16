const MoodEntry = require('../models/MoodEntry');

exports.logMood = async (req, res) => {
    try {
      console.log("DEBUG req.user:", req.user);
      const { mood, notes } = req.body;
      const entry = new MoodEntry({ userId: req.user.userId, mood, notes });
      await entry.save();
      res.status(201).json(entry);
    } catch (err) {
      res.status(500).json({ message: err.message });
    }
  };
  
  exports.getMoodHistory = async (req, res) => {
    try {
      const entries = await MoodEntry.find({ userId: req.user.userId }).sort({ date: -1 }).limit(30);
      res.json(entries);
    } catch (err) {
      res.status(500).json({ message: err.message });
    }
  };