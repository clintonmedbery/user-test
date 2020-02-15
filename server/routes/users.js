// routes/index.js and users.js
import express from 'express';
let router = express.Router();
// ..stuff below
/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

export default router;
