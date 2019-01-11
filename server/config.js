'use strict';

const port = parseInt(process.env.PORT, 10) || 8686;

const https = {
  key: './localhost.key',
  cert: './localhost.cert',
  requestCert: false,
  rejectUnauthorized: false
};

const pool = {
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'ecloud',
  charset: 'utf8', // 设置编码避免某些情况出现错误
};

const session = {
  name: 'ecloud',
  secret: 'ecloud',
  cookie: {
    httpOnly: true,
    secure: false,
    maxAge: 2 * 60 * 60 * 1000
  }
}

const ocr = {
  APP_ID: '',
  API_KEY: '',
  SECRET_KEY: ''
}

export { port, https, pool, session, ocr };