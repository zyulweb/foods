
<template>
  <div class="header">
    <div class="h_left">
      <img src="" alt="">
      <ul>
        <li><router-link :to="{path:'/Index'}">首页</router-link></li>
        <li><router-link :to="{path:'/Recipe'}">菜谱</router-link></li>
        <li><a href="#">食材</a></li>
        <li><router-link :to="{path:'/Zhenxuan'}">珍选</router-link></li>
        <li><a href="#">健康</a></li>
        <li><a href="#">专题</a></li>
        <li><a href="#">社区</a></li>
        <li><a href="#">话题</a></li>
        <li><a href="#">活动</a></li>
        <li><a href="#">搜索</a></li>
      </ul>
      <div class="h_icon">
        <img src="../img/header/xiala.png" class="xx" alt="">
        <div class="xl">
          <a href="#">烘焙</a>
          <a href="#">妈妈派</a>
        </div>
      </div>
    </div>
    <div class="h_right">
      <router-link :to="{path:'/Zhuce'}">注册</router-link>
      <router-link :to="{path:'/Denglu'}">登录</router-link>
      <div class="h_login">
        <div style="margin-top:5px;">
          <img src="../img/header/nir1.png" alt="">
          <a class="smallz l_qq" href="">QQ登陆</a>
        </div>
        <div class="h_bx">
          <div style="margin-top:5px;">
            <img src="../img/header/nir2.png" alt="">
            <a class="smallz" href="">微博登陆</a>
          </div>
          <div style="margin-top:5px;padding-bottom:5px;">
            <img src="../img/header/nir3.png" alt="">
            <a class="smallz" href="">微信登陆</a>
          </div>
        </div>
      </div>
      <div class="smz ddd" style="background:#59C3D1">
        <img src="../img/header/nr1.png" alt="">
        <a class="smallz" href="">发布</a>
        <div class="fff">
          <a class="smallz" href="">发菜谱</a>
          <a class="smallz" href="">发话题</a>
          <a class="smallz" href="">发日志</a>
        </div>
      </div>
      <div class="smz" style="background:#FFA859">
        <img  src="../img/header/nr2.png" alt="">
        <a class="smallz" href="">签到有礼</a>
      </div>
      <div class="smz" style="background:#FE5761">
        <img  src="../img/header/nr3.png" alt="">
        <a class="smallz" href="">客户端</a>
      </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
  body{
    margin:0;
  }
  .ddd{
    position: relative;
  }
  .smz .fff>a{
    background:#59C3D1;
    padding:5px 0; 
    color:#fff ;
    font-size: 12px ;
  }
  .fff{
    position: absolute;
    top:51px;
    left:0;
    display: none;
  }
  .ddd:hover .fff{
    display: block;
  }
  .smz{
    text-align: center;
    height: 46px;
    padding-top:5px;
  }
  .smz img{
    width:20px;
    height: 20px;
    display:block;
    margin-left: 20px;
  }
  .smz>.smallz,.h_login .smallz{
    font-size:12px;
    color:#fff;
    
  } 
  .xx{
    z-index: 30;
    width:30px;
    height:20px;
    margin: 20px 0px 0;
  }
  .header{
    display: flex;
    background: #333333;
    min-width: 990px;
    justify-content: space-between;
  }
  .header a:hover{
    color:rgb(172, 75, 19)
  }
  .header .h_left{display: flex}
  .header ul{
    display: flex;
    list-style: none;
    padding-left:0;
    line-height: 43px; 
  }
  .header ul li{
    padding: 0 10px;
  }
  .header ul li a{
    color:#fff;
    text-decoration: none;
    font-size: 14px;
  }
  .h_right{
    display: flex;
    align-items: center;
  }
  .h_right a{
    display: inline-block;
    width:60px;
    font-size: 14px;
    text-decoration: none;
    color: #fff;
  }
  .h_icon{
    position: relative;
  }
  .xl{
    /* display: none; */
    position: absolute;
    background: #333333;
    top:51px;
    left: -15px;
    display: none;
  }
  .xl a{
    display: block;
    text-decoration: none;
    color: #fff;
    width:60px;
    padding: 4px 0;
  }
  .h_login a{
    display: block;
  }
  .h_login{
    position: relative;
    background: #333333;
    height: 51px;
  }
  .h_login img{
    width:20px;
    height: 20px;
  }
  .h_bx{
    display: none;
    position: absolute;
    background: #333333;
    top:51px;  
    }
  .h_bx a{
    /* padding:5px 0; */
    width:60px;
  } 
  /* .l_qq{
    padding-top:15px;
  }  */
    .h_login:hover .h_bx{
      display: block;
    }
    .h_icon:hover .xl{
      display: block;
    }
</style>
