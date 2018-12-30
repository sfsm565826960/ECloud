'use strict';

import express from 'express';
import config from './config';
import mysql from 'mysql';
import cors from 'cors';
import cookieParser from 'cookie-parser';
import session from 'express-session';
import sessionStore from 'express-mysql-session';
import history from 'connect-history-api-fallback';
import router from './routes/index';

const logger = require('morgan');
const app = express();
// const mysqlPool = mysql.createPool(config.mysqlPool);

app.use(logger('dev'));

// 允许跨域
app.use(cors({
  origin: true,
  optionsSuccessStatus: 200
}));

// 静态资源访问
app.use(history());
app.use(express.static('./public'));

// Session设置
app.use(cookieParser());
// app.use(session({
//   name: config.session.name,
//   secret: config.session.secret,
//   resave: false,
//   saveUninitialized: false,
//   cookie: config.session.cookie,
//   store: new sessionStore({}, mysqlPool)
// }));

// 解析数据体
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// 注册并绑定数据连接池
// app.use((req, res, next) => {
//   req.pool = mysqlPool;
//   next();
// });

// API处理
router(app);

export default app