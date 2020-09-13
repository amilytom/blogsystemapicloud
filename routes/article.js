// 引入express对象
var express = require('express');
// 引入路由对象
var router = express.Router();

// 引入自定义的文章controller
const ArticleController = require('../controllers/article');

// 定义文章列表路由，get请求
router.get('/', ArticleController.list);
// 定义单条文章路由，get请求
router.get('/:id', ArticleController.info);
// 定义添加文章路由，post请求
router.post('/', ArticleController.add);
// 定义修改文章路由，put请求
router.put('/', ArticleController.update);
// 定义删除文章路由，delete请求
router.delete('/', ArticleController.remove);

// 导出路由，供app.js调用
module.exports = router;
