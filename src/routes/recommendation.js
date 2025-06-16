const express = require('express');
const router = express.Router();
const { getRecommendations, getRecommendation } = require('../controllers/recommendationController');

router.get('/', getRecommendations);
router.get('/:id', getRecommendation);

module.exports = router;