// 引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
//2:配置第三方模块

// 引入路由
  const zx=require("./routers/zx")


// 配置连接池
  var pool=mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'mstx',
    connectionLimit:20
  });
  
  //2.2:跨域
  var server = express();
  server.use(cors({
    origin:["http://127.0.0.1:3000","*","http://localhost:3000"],
    credentials:true
  }))

// session

   server.use(session({
    secret:"128位字符串",
    resave:true,
    saveUninitialized:true
  }))

  // 设置监听端口号
  server.listen(8080);

// 用户登录
  server.get("/login",(req,res)=>{
    // 1.参数
    var uname=req.query.uname;
    var upwd=req.query.upwd;
    // 2.sql语句
    var sql="SELECT uid FROM ms_user WHERE uname=? AND upwd=?";
    // 3.json
    pool.query(sql,[uname,upwd],(err,result)=>{
      if(err)throw err;
      if(result.length==0){
        res.send({conde:-1,msg:"用户名或密码有误"});
      }else{
        // req.session.uid=result[0].id;
        res.send({cosde:1,msg:"登录成功"})
      }
    })
  })

  //  2.9指定静态目录
  server.use(express.static("public"))
  
  // 管理路由
  server.use("/zx",zx);