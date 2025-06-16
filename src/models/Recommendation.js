const mongoose = require('mongoose');

const RecommendationSchema = new mongoose.Schema({
  category: { type: String, required: true },
  title: { type: String, required: true },
  description: { type: String },
  actionLink: { type: String },
  tags: { type: [String], default: [] }
});

module.exports = mongoose.model('Recommendation', RecommendationSchema);