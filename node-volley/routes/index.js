var express = require('express');
var router = express.Router();


var mysql = require('mysql');



var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'server-berita',

});


var pengamananAdmin = function (req, res, next) {

    if (req.session.admin === true)
        return next();

    res.send("Engga dijinin gan!");
};




/* GET home page. */
router.get('/list-berita', function(req, res, next) {

   var query = connection.query("select * FROM berita_depok", function (err, berita) {

        console.log(berita);

        res.json({result:berita});



   });


});


router.get('/berita/:id' ,function(req, res, next) {

    console.log(req.params.id);

   var query = connection.query("select * FROM berita_depok where id_berita = ?", req.params.id , function (err, berita) {

        console.log(berita);

        res.json({result:berita});



   });


});

router.get('/', function(req, res, next) {

    res.render('login-admin');

});



router.post('/login', function(req, res, next) {

    var query = connection.query('select * from admin where user_name = ?  ', req.body.user_admin, function (err, data) {


        if (err) {
            console.log(err);
            return next("Mysql error, check your query");
        }

        console.log(data);

        if (data.length < 1) {

            res.render('login-admin', {
                error: "has-error is-empty",
                data: "<label class='control-label' id='error' >Data tidak ada didalam database</label>"
            });

        } else if ((req.body.user_admin === data[0].user_name) && (req.body.password === data[0].password)) {

            req.session.admin = true;
            req.session.namaSession = data[0].user_name;

            res.redirect('add-berita');


        } else {

            res.render('user/admin/login-admin', {
                error: "has-error is-empty",
                data: "<label class='control-label' id='error' >Password anda salah</label>"
            });

        }



    });

});



router.get('/add-berita', pengamananAdmin, function(req, res, next) {
    console.log(req.session.namaSession);

    res.render('admin/add-berita', {nama:req.session.namaSession });

});



router.post('/add-berita', function(req, res, next) {

 var insertBerita = {
        judul_berita: req.body.judulBerita,
        isi_berita: req.body.isiBerita,
        ringakasan_berita: req.body.ringkasanBerita,
    };

    console.log(req.body);

    var query = connection.query("INSERT INTO berita_depok set ? ", insertBerita, function (err, rows, callback) {

        if (err) {
            console.log(err);
            return next("Mysql error, check your query");
        }
        console.log(callback);
        
      
   



    });


});


router.get('/keluar-admin', function(req, res, next) {

   req.session.destroy();
    res.redirect('/');

});





module.exports = router;
