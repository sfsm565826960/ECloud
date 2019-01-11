'use strict';

import fs from 'fs';
import {ocr as config} from '../config';
const client = require('baidu-aip-sdk').ocr;

const ocr = new client(config.APP_ID, config.API_KEY, config.SECRET_KEY);

const getImageBase64 = async url => {
    return new Promise((resolve, reject) => {
        fs.exists(url, exists => {
            if (exists) {
                fs.readFile(url, (err, data) => {
                    if (err) {
                        reject(err);
                    } else {
                        resolve(data.toString('base64'));
                    }
                });
            } else {
                resolve(url);
            }
        });
    });
}

const idcard = async img => {
    img = await getImageBase64(img);
    return ocr.idcard(img, 'front');
}

const businessLicense = async img => {
    img = await getImageBase64(img);
    return ocr.businessLicense(img);
}

export default {getImageBase64, idcard, businessLicense}