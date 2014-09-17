var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res) {
  res.render('index', {title: 'Express', content: ''});
});

router.post('/', function(req, res) {
  res.render('index', {title: 'Express', content: res.body.content});
});

module.exports = router;
