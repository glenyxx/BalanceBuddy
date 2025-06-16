const Notification = require('../models/Notification');

exports.getNotifications = async (req, res) => {
  try {
    const notes = await Notification.find({ userId: req.user.userId }).sort({ createdAt: -1 }).limit(20);
    res.json(notes);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

exports.markAsRead = async (req, res) => {
  try {
    await Notification.updateMany({ userId: req.user.userId, read: false }, { read: true });
    res.json({ message: 'All notifications marked as read' });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};