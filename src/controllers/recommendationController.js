const Recommendation = require('../models/Recommendation');

exports.getRecommendations = async (req, res) => {
  try {
    const { category } = req.query;
    let filter = {};
    if (category) filter.category = category;
    const recs = await Recommendation.find(filter).limit(20);
    res.json(recs);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

exports.getRecommendation = async (req, res) => {
  try {
    const rec = await Recommendation.findById(req.params.id);
    if (!rec) return res.status(404).json({ message: 'Not found' });
    res.json(rec);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};