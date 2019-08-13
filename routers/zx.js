const express=require("express")
const router=express.Router();
const pool=require('../pool.js');

router.get("/xz",(req,res)=>{
    var sql="select title,price,pic from ms_zx_product"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})


router.get("/xz1",(req,res)=>{
    var sql="select title,price,pic from ms_zx_product2"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})


router.get("/xz2",(req,res)=>{
    var sql="select title,price,pic from ms_zx_product3"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

router.get("/xz3",(req,res)=>{
    var sql="select title,price,pic from ms_zx_product4"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

router.get("/xz4",(req,res)=>{
    var sql="select title,title1,title2,title3,title4,pic,pic1,pic2,pic3,pic4,pic5,pic6 from ms_zx_quanbu"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

router.get("/xz5",(req,res)=>{
    var sql="select pic,title,price,manei from ms_zx_hongpei"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

router.get("/xz6",(req,res)=>{
    var sql="select pic,title,price,manei from ms_zx_hongpei1"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

router.get("/xz7",(req,res)=>{
    var sql="select pic,title,price,manei from ms_zx_hongpei2"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

// router.get("/recipe",(req,res)=>{
//     var sql=`select pid,title,author,pic from ms_index_product ORDER BY  RAND() LIMIT 8`
//     pool.query(sql,[],(err,result)=>{
//       if(err)throw err;
//       res.send({code:1,data:result})
//     })
//   })

  router.get("/recipe1",(req,res)=>{
    //参数
    var pno=req.query.pno;
    var ps=req.query.pageSize;
    //设置默认值
    if(!pno){pno=1};
    if(!ps){ps=8};
    var obj={code:1,data:"查询成功"}
    var sql=`select pid,title,author,pic from ms_index_product limit ?,?`;
    var off=(pno-1)*ps;
    ps=parseInt(ps);
    pool.query(sql,[off,ps],(err,result)=>{
      if(err)throw err;
      obj.data=result;
      var sql="SELECT count(*) AS c FROM ms_index_product";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        var pc=Math.ceil(result[0].c/ps);
        obj.pc=pc;
        res.send(obj)
      })
    })
  })

  router.get("/recipe2",(req,res)=>{
    //参数
    var pno=req.query.pno;
    var ps=req.query.pageSize;
    //设置默认值
    if(!pno){pno=1};
    if(!ps){ps=8};
    var obj={code:1,data:"查询成功"}
    var sql=`select pid,title,author,pic from ms_index_product2 limit ?,?`;
    var off=(pno-1)*ps;
    ps=parseInt(ps);
    pool.query(sql,[off,ps],(err,result)=>{
      if(err)throw err;
      obj.data=result;
      var sql="SELECT count(*) AS c FROM ms_index_product2";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        var pc1=Math.ceil(result[0].c/ps);
        obj.pc1=pc1;
        res.send(obj)
      })
    })
  })


  router.get("/recipe3",(req,res)=>{
    //参数
    var pno=req.query.pno;
    var ps=req.query.pageSize;
    //设置默认值
    if(!pno){pno=1};
    if(!ps){ps=8};
    var obj={code:1,data:"查询成功"}
    var sql=`select pid,title,author,pic from ms_index_product3 limit ?,?`;
    var off=(pno-1)*ps;
    ps=parseInt(ps);
    pool.query(sql,[off,ps],(err,result)=>{
      if(err)throw err;
      obj.data=result;
      var sql="SELECT count(*) AS c FROM ms_index_product3";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        var pc2=Math.ceil(result[0].c/ps);
        obj.pc2=pc2;
        res.send(obj)
      })
    })
  })

  router.get("/recipe4",(req,res)=>{
    //参数
    var pno=req.query.pno;
    var ps=req.query.pageSize;
    //设置默认值
    if(!pno){pno=1};
    if(!ps){ps=8};
    var obj={code:1,data:"查询成功"}
    var sql=`select pid,title,author,pic from ms_index_product4 limit ?,?`;
    var off=(pno-1)*ps;
    ps=parseInt(ps);
    pool.query(sql,[off,ps],(err,result)=>{
      if(err)throw err;
      obj.data=result;
      var sql="SELECT count(*) AS c FROM ms_index_product4";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        var pc=Math.ceil(result[0].c/ps);
        obj.pc=pc;
        res.send(obj)
      })
    })
  })


module.exports=router;