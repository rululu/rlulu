const express = require('express');
var mysql = require('mysql');
var app = express();
app.use('/', express.static('public'))
var db = mysql.createPool({
	host: 'localhost',
	user: 'root',
	port: '3306',
	password: '123456',
	database: 'liebiao'
})
app.set('view engine', 'ejs')
app.get('/', (req, res) => { 
	db.query('SELECT * FROM lbiao', (err, data) => {
		if(err) {
			console.log(err)
		} else {
			res.render('index', {
				title: '列表页',
				shop: data
			})
		}
	})
})
app.get('/detail/:id', function(req, res) { 
	let id = req.params.id;
	db.query(`SELECT * FROM lbiao where id=${id}`, (err, data) => {
		if(err) {
			console.log(err)
		} else {
			res.render('detail', {
				title: '详情页:' + data[0].title,
				shop: data
			})
		}
	})

})
app.listen(3000)