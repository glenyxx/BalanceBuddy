const express = require('express');
const router = express.Router();
const auth = require('../middleware/auth');
const { logActivity, getActivityHistory } = require('../controllers/activityController');

router.post('/', auth, logActivity);
router.get('/history', auth, getActivityHistory);

module.exports = router;