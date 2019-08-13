<template>
  
  <div style="margin-bottom:20px;">
    <div class="page-title">
      <div class="page-logo">
        <img src="../img/imgs/logo.png" alt="">
      </div>
      <div class="page-nav">
        <ul class="page-nav-ul">
          <li class="page-nav-li">
            <a style="color:#ff5757;" class="page-nav-content" href="#">首页</a>
          </li>
          <li class="page-nav-li">
            <router-link class="page-nav-content" :to="{path:'/Recipe'}">菜谱</router-link>
          </li>
          <li class="page-nav-li">
            <a class="page-nav-content" href="#">食材</a>
          </li>
          <li class="page-nav-li">
            <router-link class="page-nav-content" :to="{path:'/Zhenxuan'}">珍选</router-link>
          </li>
          <li class="page-nav-li">
            <a class="page-nav-content" href="#">健康</a>
          </li>
          <li class="page-nav-li">
            <a class="page-nav-content" href="#">专题</a>
          </li>
          <li class="page-nav-li">
            <a class="page-nav-content" href="#">社区</a>
          </li>
          <li class="page-nav-li">
            <a class="page-nav-content" href="#">话题</a>
          </li>
        </ul>
      </div>
    </div>

    <div class="aaa">
    <el-carousel :interval="5000" arrow="always" class="lunbo">
    <el-carousel-item style="height:360px;">
      <h3 class="lunbo-content">
        <img src="../img/imgs/lunbo1.png" alt="">
      </h3>
    </el-carousel-item>
    <el-carousel-item style="height:360px;">
      <h3 class="lunbo-content">
        <img src="../img/imgs/lunbo2.png" alt="">
      </h3>
    </el-carousel-item>
    <el-carousel-item style="height:360px;">
      <h3 class="lunbo-content">
        <img src="../img/imgs/lunbo3.png" alt="">
      </h3>
    </el-carousel-item>
    <el-carousel-item style="height:360px;">
      <h3 class="lunbo-content">
        <img src="../img/imgs/lunbo4.png" alt="">
      </h3>
    </el-carousel-item>
  </el-carousel>


     <div class="commodity-list">
          <ul>
            <li class="caipu-li">
              <a href="#" target="_blank">
                <i class="caipu-icon"></i>
                &nbsp;菜谱大全
                <b class="caipu-icon-right"></b>
              </a>

              <div class="caipu-none">
                <!-- 一 -->
                <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">一周热门</h3>
                      <p class="none-li-p">近七天最受欢迎</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">人气菜肴</h3>
                      <p class="none-li-p">超过50人收藏</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">冬季菜谱</h3>
                      <p class="none-li-p">看看大家都在吃什么</p>
                    </a>
                  </li>
                </ul>
                <!-- 二 -->
                   <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">早餐</h3>
                      <p class="none-li-p">像国王一样早餐</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">高颜值</h3>
                      <p class="none-li-p">颜控专用通道</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">凉菜</h3>
                      <p class="none-li-p">精选2600道</p>
                    </a>
                  </li>
                </ul>
                <!-- 三 -->
                   <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">热菜</h3>
                      <p class="none-li-p">精选42500道</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">主食</h3>
                      <p class="none-li-p">精选18000道</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">小吃</h3>
                      <p class="none-li-p">精选11000道</p>
                    </a>
                  </li>
                </ul>
                <!-- 四 -->
                  <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">酱泡腌菜</h3>
                      <p class="none-li-p">精选700道</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">新秀菜谱</h3>
                      <p class="none-li-p">最新的优秀菜谱</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">所有分类</h3>
                      <p class="none-li-p">美天的神器饭盒</p>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="shicai-li">
                <a href="#" target="_blank">
                  <i class="tomatoes-icon"></i>
                  食材大全
                  <b class="caipu-icon-right"></b>
                </a>

                <div class="shicai-none" >
                <!-- 一 -->
                <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">秋葵</h3>
                      <p class="none-li-p">新晋VC王</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">西红柿</h3>
                      <p class="none-li-p">共3160道菜谱</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">黑木耳</h3>
                      <p class="none-li-p">百搭配菜，防雾霾</p>
                    </a>
                  </li>
                </ul>
                <!-- 二 -->
                   <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">小龙虾</h3>
                      <p class="none-li-p">红到勾心，辣到流泪</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">螃蟹</h3>
                      <p class="none-li-p">全民爆红</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">鸡翅</h3>
                      <p class="none-li-p">共1156道菜谱</p>
                    </a>
                  </li>
                </ul>
                <!-- 三 -->
                   <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">肉禽蛋</h3>
                      <p class="none-li-p">共231种</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">水产品</h3>
                      <p class="none-li-p">共288种</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">蔬菜瓜菌</h3>
                      <p class="none-li-p">共473种</p>
                    </a>
                  </li>
                </ul>
                <!-- 四 -->
                  <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">鲜果干果</h3>
                      <p class="none-li-p">共196种</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">米面豆乳</h3>
                      <p class="none-li-p">共180种</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">营养排行</h3>
                      <p class="none-li-p">看看谁TOP！</p>
                    </a>
                  </li>
                </ul>
              </div>
              </li>
              <li class="yinshi-li">
                <a href="#" target="_blank">
                  <i class="candy-icon"></i>
                  饮食健康
                  <b class="caipu-icon-right"></b>
                </a>

                  <div class="yinshi-none">
                <!-- 一 -->
                <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">最新推荐</h3>
                      <p class="none-li-p">饮食健康知识</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">饮食常识</h3>
                      <p class="none-li-p">健康知识</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">瘦身美容</h3>
                      <p class="none-li-p">应该知道的小知识</p>
                    </a>
                  </li>
                </ul>
                <!-- 二 -->
                   <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">气血双补</h3>
                      <p class="none-li-p">食疗专题</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">痛经</h3>
                      <p class="none-li-p">痛经吃什么好</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">驱寒暖身</h3>
                      <p class="none-li-p">有温度的食材</p>
                    </a>
                  </li>
                </ul>
                <!-- 三 -->
                   <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">对抗雾霾</h3>
                      <p class="none-li-p">雾霾天吃什么</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">失眠</h3>
                      <p class="none-li-p">失眠吃什么好</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">食疗食补</h3>
                      <p class="none-li-p">常见症状的食疗专题</p>
                    </a>
                  </li>
                </ul>
               
              </div>
              </li>
              <li class="zhuanti-li">
                <a href="#" target="_blank">
                  <i class="special-icon"></i>
                  专题专区
                  <b class="caipu-icon-right"></b>
                </a>
               
                <div class="zhuanti-none" >
                <!-- 一 -->
                <ul class="none-ul">
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">最新推荐</h3>
                      <p class="none-li-p">饮食健康知识</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">饮食常识</h3>
                      <p class="none-li-p">健康知识</p>
                    </a>
                  </li>
                  <li class="none-li">
                    <a href="#">
                      <h3 class="none-li-h3">瘦身美容</h3>
                      <p class="none-li-p">应该知道的小知识</p>
                    </a>
                  </li>
                </ul>
               <div class="zhuanti-map">
                 <img src="../img/imgs/zhuanti-none1.jpg" alt="">
                 <img src="../img/imgs/zhuanti-none2.jpg" alt="">
               </div>
              </div>
              </li>
              <li class="yiqi-li">
                <a href="#" target="_blank">
                  <i class="thumb-icon" ></i>
                  &nbsp;&nbsp;一起红
                  <b class="caipu-icon-right"></b>
                </a>

              <div class="yiqi-none">
                <div class="zhuanti-map1">
                  <img src="../img/imgs/yiqi-none1.jpg" alt="">
                </div>
                <div class="zhuanti-map2">
                  <img src="../img/imgs/yiqi-none2.jpg" alt="">
                </div>
              </div>
              </li>
          </ul>
        </div>
  </div>
  </div>
  

</template>

<script>

export default {
  data(){
    return {
     
    }
  },methods:{
    
  }
}
</script>

<style>
*{
  margin: 0;
  padding: 0;
}
.lunbo{
 width: 70%;
  min-width: 1100px;
  height: 360px;
  overflow: hidden;
  margin: 0 auto;
  position: relative;
  
}
.lunbo-content>img{
  width: 100%;
  height: 360px;
}
.el-carousel__arrow--right{
  margin-top: 8% !important;
}
.el-carousel__arrow--left{
  margin-top: 8% !important;
  margin-left:20% !important;
}




.commodity-list{
  width: 220px;
  height: 360px;
  padding: 30px 0 0 0;
  position: absolute;
  top: 4%;
  left: 15%;
  z-index: 2222;
  background: #444;
  background: rgba(68,68,68,.4);
}
.commodity-list>ul{
  width: 100%;
  
}
.commodity-list>ul>li{
  font-size: 18px;
  color: #fff;
  display: block;
  height: 60px;
}
.commodity-list>ul>li>a{
  display: block;
  color: #fff;
  height: 20px;
  line-height: 20px;
  padding: 20px 0;
  vertical-align: middle;
}
.commodity-list>ul>li>a:hover{
  text-decoration: none;
}

.commodity-list .caipu-icon{
  width: 20px;
  height: 20px;
  float: left;
  margin: 0 10px 0 20px;
  background: url(../img/imgs/caipu-icon.png);
  background-size: 100% 100%;
  margin-right: 5%;
}
.commodity-list .caipu-icon-right{
  width: 20px;
  height: 20px;
  background: url(../img/imgs/right-icon.png) no-repeat scroll 0 0/auto 20px;
  margin-right: 5%;
  float: right;
}
.commodity-list .tomatoes-icon{
  width: 25px;
  height: 25px;
  float: left;
  margin: 0 10px 0 20px;
  background: url(../img/imgs/shicai-icon.png);
  background-size: 100% 100%;
  margin-right: 5%;
}
.commodity-list .candy-icon{
  width: 25px;
  height: 25px;
  float: left;
  margin: 0 10px 0 20px;
  background: url(../img/imgs/yinshi-icon.png);
  background-size: 100% 100%;
  margin-right: 5%;
}
.commodity-list .special-icon{
  width: 25px;
  height: 25px;
  float: left;
  margin: 0 10px 0 20px;
  background: url(../img/imgs/zhuanti-icon.png);
  background-size: 100% 100%;
  margin-right: 5%;
}
.commodity-list .thumb-icon{
  width: 20px;
  height: 20px;
  float: left;
  margin: 0 10px 0 20px;
  background: url(../img/imgs/yinsqi-icon.png);
  background-size: 100% 100%;
  margin-right: 5%;
}
/*菜谱隐藏部分*/
.caipu-none{
  width: 200%;
  height: 360px;
  position: absolute;
  left: 100%;
  top: 0;
  display: none;
  background: #fff;
}
.none-ul{
  width: 100%;
  height: 70px;
  margin-top: 15px;
  display: flex;
  justify-content: space-between;
  
}
.none-li{
  width: 25%;
  text-align: center;
  
}
.none-li-h3{
  font-size: 18px;
  color: #333333;
  font-weight: 400;
}
.none-li-p{
  font-size: 12px;
  color:#999999;
  margin-top: 10px;
}
.none-li:hover .none-li-h3{
  color: #ff5757;
}
.caipu-li:hover{
  background: #ff5757
}
.caipu-li:hover .caipu-none{
  display: block;
}

/*食材隐藏部分*/
.shicai-none{
  width: 200%;
  height: 360px;
  position: absolute;
  left: 100%;
  top: 0;
  display: none;
  background: #fff;
}
.shicai-li:hover{
  background: #ff5757;
}
.shicai-li:hover .shicai-none{
  display: block;
}

/*饮食隐藏部分*/
.yinshi-none{
  width: 200%;
  height: 360px;
  position: absolute;
  left: 100%;
  top: 0;
  display: none;
  background: #fff;
}
.yinshi-li:hover{
  background: #ff5757;
}
.yinshi-li:hover .yinshi-none{
  display: block;
}

/*专题隐藏部分*/
.zhuanti-map{
  width: 100%;
  height: 200px;
  margin-top: 20px;
}
.zhuanti-map>img{
  width: 50%;
}
.zhuanti-none{
  width: 200%;
  height: 360px;
  position: absolute;
  left: 100%;
  top: 0;
  display: none;
  background: #fff;
}
.zhuanti-li:hover{
  background: #ff5757;
}
.zhuanti-li:hover .zhuanti-none{
  display: block;
}

/*一起红隐藏部分*/
.zhuanti-map1{
  width: 100%;
  height: 180px;
  text-align: center;
}
.zhuanti-map2{
  width: 100%;
  height: 150px;
  margin-top: 20px;
  text-align: center;
}
.zhuanti-map1>img{
  width: 30%;
  height: 150px;
}
.zhuanti-map2>img{
  width: 100%;
  height: 150px;
}
.yiqi-none{
  width: 200%;
  height: 360px;
  position: absolute;
  left: 100%;
  top: 0;
  display: none;
  background: #fff;
}
.yiqi-li:hover{
  background: #ff5757;
}
.yiqi-li:hover .yiqi-none{
  display: block;
}

/*轮播图上面头部*/
.page-title{
  width: 70%;
  height: 70px;
  margin: 0 auto;
}
.page-logo{
  width: 20%;
  height: 70px;
  margin-left: 4%;
  margin-top: 15px;
  float: left;
  box-sizing: border-box;
}
.page-logo>img{
  margin-left: -35%;
}

.page-nav{
  width: 50%;
  height: 70px;
  float: left;
  
}
.page-nav-ul{
  width: 100%;
  height: 70px;
  display: flex;
  justify-content: space-between;
}
.page-nav-li{
  width: 10%;
  height: 70px;
}
.page-nav-content{
  display: inline-block;
  width: 100%;
  height: 70px;
  line-height: 70px;
  text-align: center;
  font-size: 20px;
  color: #333333;
}
.page-nav-content:hover{
  color: #ff5757;
}
.aaa{
  position: relative;
}
</style>
