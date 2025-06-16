const express = require('express');
const router = express.Router();
const auth = require('../middleware/auth');
const { getDigitalTwin } = require('../controllers/digitaltwinController');

router.get('/', auth, getDigitalTwin);

module.exports = router;