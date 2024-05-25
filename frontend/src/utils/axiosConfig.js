// src/utils/axiosConfig.js

import axios from 'axios';

const axiosInstance = axios.create({
    baseURL: 'http://localhost:8000/api', // Backend API URL
    timeout: 5000,
    headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
    }
});

axiosInstance.interceptors.request.use(
    config => {
        const token = localStorage.getItem('access_token'); // Token'i localStorage'dan al
        if (token) {
            console.log('Token mevcut: ', token); // Token'ı konsola yazdırarak kontrol et
            config.headers['Authorization'] = 'Bearer ' + token;
        } else {
            console.log('Token bulunamadı'); // Token yoksa bu mesajı yazdır
        }
        return config;
    },
    error => {
        return Promise.reject(error);
    }
);

export default axiosInstance;
