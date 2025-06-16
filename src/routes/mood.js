const express = require('express');
const router = express.Router();
const auth = require('../middleware/auth');
const { logMood, getMoodHistory } = require('../controllers/moodController');

router.post('/', auth, logMood);
router.get('/history', auth, getMoodHistory);

module.exports = router;