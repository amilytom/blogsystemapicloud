// 引入http错误处理模块
var createError = require('http-errors');
// 引入express框架
var express = require('express');
// 引入path模块
var path = require('path');
// 引入cookie处理对象
var cookieParser = require('cookie-parser');
// 引入日志模块
var logger = require('morgan');

// 引入Token验证中间件
const verifyMiddleware = require('./controllers/verify');

// 引入路由文件(router文件夹)
var indexRouter = require('./routes/index');
var articleRouter = require('./routes/article');
var cateRouter = require('./routes/cate');
var infoRouter = require('./routes/info');
var adminRouter = require('./routes/admin');

// 实例化express，创建express应用
var app = express();

// 模板引擎文件夹
app.set('views', path.join(__dirname, 'views'));

// 设置art-template为模板引擎
app.engine('html', require('express-art-template'));
app.set('view engine', 'html');

// 定义日志打印级别
app.use(logger('dev'));
// 定义JSON格式处理数据
app.use(express.json());
// 定义使用urlencode处理数据及querystring模块解析数据
app.use(express.urlencoded({extended: false}));
// 定义使用cookie处理对象
app.use(cookieParser());
// 定义静态资源目录文件夹pubilc
app.use(express.static(path.join(__dirname, 'public')));

// 定义使用路由-给router分配访问路径
app.use('/', indexRouter);
app.use('/cate', verifyMiddleware.verifyToken, cateRouter);
app.use('/article', verifyMiddleware.verifyToken, articleRouter);
app.use('/info', verifyMiddleware.verifyToken, infoRouter);
app.use('/admin', verifyMiddleware.verifyToken, adminRouter);

// 定义404错误处理
// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// 定义其他错误处理 error handler
app.use(function (err, req, res, next) {
  // 设置local，只在开发环境生效
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // 返回错误http状态码 render the error page
  res.status(err.status || 500);
  // 渲染错误页面
  res.render('error');
});

module.exports = app;
