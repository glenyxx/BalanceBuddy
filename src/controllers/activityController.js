const ActivityEntry = require('../models/ActivityEntry');

exports.logActivity = async (req, res) => {
  try {
    const { steps, calories, minutes, notes } = req.body;
    const entry = new ActivityEntry({ userId: req.user.userId, steps, calories, minutes, notes });
    await entry.save();
    res.status(201).json(entry);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

exports.getActivityHistory = async (req, res) => {
  try {
    const entries = await ActivityEntry.find({ userId: req.user.userId }).sort({ date: -1 }).limit(30);
    res.json(entries);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};