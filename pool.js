const mysql=require('mysql');
//创建连接池
//2.1:配置连接池
//2.1:配置连接池
var pool=mysql.createPool({
	host:'127.0.0.1',
	port:3306,
	user:'root',
	password:'',
	database:'mstx',
	connectionLimit:20
});

module.exports=pool;


