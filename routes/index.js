// 引入express对象
var express = require('express');
// 引入路由对象
var router = express.Router();

// 引入自定义的首页controller
const IndexController = require('../controllers/index');
// 定义登录路由，post请求
router.post('/login', IndexController.login);

// 导出路由，供app.js调用
module.exports = router;
