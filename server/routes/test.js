'use strict';

import express from 'express';
const router = express.Router();

router.get('/', (req, res, next) => {
  req.pool.query('show tables;', (err, rows) => {
    if (err) {
      console.error(err);
      res.send(err);
    } else {
      res.json(rows);
    }
  })
});

export default router