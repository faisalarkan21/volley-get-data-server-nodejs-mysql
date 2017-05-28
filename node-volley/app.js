var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

var exphbs = require('express-handlebars');
var session = require('express-session');

var index = require('./routes/index');
var users = require('./routes/users');

var app = express();

var hbs = exphbs.create({
    // Specify helpers which are only registered on this instance.

    extname: '.html',
    helpers: {   
        tambahSatuAdmin: function (angka) {
            return angka + 1
        },
        atas: function () {

            for (var i = 0; i < 5; i++) {

                return i;

            }
        }   
    }
});



// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.engine('.html', hbs.engine);
app.set('view engine', '.html');


// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/tinymce', express.static(__dirname + '/node_modules/tinymce/'));
app.use('/material', express.static(__dirname + '/node_modules/bootstrap-material-design/dist/'));
app.use('/bootstrap', express.static(__dirname + '/node_modules/bootstrap/dist/'));
app.use('/jquery', express.static(__dirname + '/node_modules/jquery/dist/'));
app.use('/handlebars', express.static(__dirname + '/node_modules/handlebars/dist/'));
app.use('/font-material', express.static(__dirname + '/node_modules/material-design-icons/iconfont/'));
app.use('/font-awesome', express.static(__dirname + '/node_modules/font-awesome/'));
app.use('/codemirror', express.static(__dirname + '/node_modules/codemirror/'));
app.use('/quill', express.static(__dirname + '/node_modules/quill/dist/'));

app.use(session({
    secret: 'somesecrettokenhere',
    resave: false,
    saveUninitialized: true
}));


app.use(function (req, res, next) {
    res.locals.session = req.session;
    next();
});




app.use('/', index);
app.use('/users', users);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
