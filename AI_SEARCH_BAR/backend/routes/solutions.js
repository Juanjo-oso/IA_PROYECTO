const express = require('express');
const { searchSolutions } = require('../controllers/solutionsController');
const router = express.Router();

router.get('/search', searchSolutions);

module.exports = router;
