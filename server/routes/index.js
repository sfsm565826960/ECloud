'use strict';

import test from './test';
import admin from './admin';

export default app => {
  app.use('/test', test);
  app.use('/admin', admin);
}