<template>
<div>
    <headerr></headerr>
     <div class="biaoqian_1">
        <!-- 表头 -->
        <div id="biaotou">
            <div id="biaotou_1">
                <a href="#">
                    <img class="biao_tu" src="../img/logo.png" alt="">
                </a>
                <a href="#">
                    <div class="biaoqian">珍选</div>
                </a>
                <ul id="tab" class="biaotou_2">
                    <li data-toggle="tab" data-id="channei_1" class="yes caishou">珍选首页</li>
                    <!-- <li class="yes_1" data-toggle="tab" data-id="channei_2"><router-link :to="{path:'/Fenlei'}">分类</router-link></li> -->
                    <li><router-link class="sss" :to="{path:'/Fenlei'}">分类</router-link></li>
                    <li data-toggle="tab" data-id="channei_3">清单</li>
                    <li data-toggle="tab" data-id="channei_4">品测</li>
                </ul>   
            </div>
        </div>
        <div class="neirong">
            <!-- 菜谱首页 -->
            <div class="neirong_1" id="channei_1">
                <div id="leibiao">
                    <p>首页</p>
                    <ul class="leibiao lb">
                     <li><a href="hongpei.html">烘焙</a></li>  
                     <li><a href="ruzhipin.html">母婴</a> </li> 
                    <li><a href="fuliao.html">果蔬生鲜</a></li>  
                      <li><a href="bancheng.html">休闲零食</a></li>
                      <li><a href="fenlei.html">饮品茶酒</a> </li>
                      <li><a href="mianfen.html">粮油干货</a></li> 
                      <li><a href="moju.html">进口食品</a> </li>
                      <li><a href="gongju.html">厨电厨具</a> </li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="cp">
            <div class="zl">
                <ul id="cp_list">
                <li><a href=""><img src="../img/c320 (5).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <li><a href=""><img src="../img/c320 (4).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <li><a href=""><img src="../img/c320 (3).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <li><a href=""><img src="../img/c320 (2).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <li><a href=""><img src="../img/c320 (1).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <li><a href=""><img src="../img/c320 (6).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <li><a href=""><img src="../img/c320.jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <li><a href=""><img src="../img/c320 (7).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <li><a href=""><img src="../img/c320 (8).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <li><a href=""><img src="../img/c320 (9).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <li><a href=""><img src="../img/c320 (10).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <li><a href=""><img src="../img/c320 (11).jpeg" alt=""><span>换个花样吃饼</span><p>52篇菜谱</p></a></li>
                <div class="ddd"></div>
                </ul>
                <div @click="btnLeft()" id="Left_btn" class="Left_btn"><img  src="../img/xiazai6.png" alt=""></div>
                <div @click="btnRight()" id="right_btn" class="right_btn"><img src="../img/jiantou.png" alt=""></div>
            </div>
            <div class="repice_nav">
                <ul class="nav_list">
                <li><a href="javascript:;"><img src="../img/z01.jpg" alt=""><p>限时秒杀</p></a></li>
                    <li><a href="javascript:;"><img src="../img/z02.jpg" alt=""><p>白菜价</p></a></li>
                    <li><a href="javascript:;"><img src="../img/z03.jpg" alt=""><p>买了又买</p></a></li>
                    <li><a href="javascript:;"><img src="../img/z04.jpg" alt=""><p>厨房神器</p></a></li>
                    <li><a href="javascript:;"><img src="../img/z05.jpg" alt=""><p>镇店之宝</p></a></li>
                    <li><a href="javascript:;"><img src="../img/z06.jpg" alt=""><p>海淘食光</p></a></li>
                    <li><a href="javascript:;"><img src="../img/z07.jpg" alt=""><p>葡萄酒</p></a></li>
                    <li><a href="javascript:;"><img src="../img/z08.jpg" alt=""><p>咖啡</p></a></li>
                    <li><a href="javascript:;"><img src="../img/z09.jpg" alt=""><p>杯子</p></a></li>
                    <li><a href="javascript:;"><img src="../img/z10.jpg" alt=""><p>悦烘焙</p></a></li>
                </ul>
            </div>
            <div class="jianhuo">
                <!-- <div class="jianhuo_01">发现尖货</div> -->
                <el-tabs class="fxjh" v-model="activeName1" @tab-click="handleClick">
                    <el-tab-pane label="最新推荐" name="tuijian">
                        <div class="cp_list" > 
                        <div class="foods" v-for="(item,i) of p" :key="i">
                            <a href="javascirpt:;" class="a01">
                            <img :src="'http://127.0.0.1:8080/img/'+item.pic" alt="">
                            </a>
                            <a href=""><p>{{item.title}}</p></a> 
                            <a href=""><span>￥{{item.price}}</span></a> 
                            <a href=""><span class="goumai">购买</span></a>   
                        </div>
                        </div>
                    </el-tab-pane>
                    <el-tab-pane label="最新发布" name="fabu">
                          <div class="cp_list" > 
                        <div class="foods" v-for="(item,i) of p1" :key="i">
                            <a href="javascirpt:;" class="a01">
                            <img :src="'http://127.0.0.1:8080/img/'+item.pic" alt="">
                            </a>
                            <a href=""><p>{{item.title}}</p></a> 
                            <a href=""><span>￥{{item.price}}</span></a> 
                            <a href=""><span class="goumai">购买</span></a>   
                        </div>
                        </div>
                    </el-tab-pane>
                    <el-tab-pane label="最新品测" name="pince">
                         <div class="cp_list" > 
                        <div class="foods" v-for="(item,i) of p2" :key="i">
                            <a href="javascirpt:;" class="a01">
                            <img :src="'http://127.0.0.1:8080/img/'+item.pic" alt="">
                            </a>
                            <a href=""><p>{{item.title}}</p></a> 
                            <a href=""><span>￥{{item.price}}</span></a> 
                            <a href=""><span class="goumai">购买</span></a>   
                        </div>
                        </div>
                    </el-tab-pane>
                    <el-tab-pane label="一月人气推荐" name="renqi">
                        <div class="cp_list" > 
                        <div class="foods" v-for="(item,i) of p3" :key="i">
                            <a href="javascirpt:;" class="a01">
                            <img :src="'http://127.0.0.1:8080/img/'+item.pic" alt="">
                            </a>
                            <a href=""><p>{{item.title}}</p></a> 
                            <a href=""><span>￥{{item.price}}</span></a> 
                            <a href=""><span class="goumai">购买</span></a>   
                        </div>
                        </div>
                    </el-tab-pane>
                    </el-tabs>
            </div>
            
        </div>
        <footrt></footrt>
    </div>
</div>
</template>

<script>
import Headerr from '../Foods/Header.vue'
import Footrt from '../Foods/Footr.vue'


import"../css/biaotou.css"
import"../css/recipes.css"

export default {
   
    data() {
      return {
        // activeName: 'shouye',
        activeName1: 'tuijian',
        p:[],
        p1:[],
        p2:[],
        p3:[],
        n:1,
        liwidth:1035,
        q:-1
      };
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      },
      love(){
        var url="http://127.0.0.1:8080/zx/xz"
        this.axios.get(url).then(res=>{
            this.p=res.data;
            console.log(res)
        })
      },
       love1(){
        var url="http://127.0.0.1:8080/zx/xz1"
        this.axios.get(url).then(res=>{
            this.p1=res.data;
            console.log(res)
        })
      },
       love2(){
        var url="http://127.0.0.1:8080/zx/xz2"
        this.axios.get(url).then(res=>{
            this.p2=res.data;
            console.log(res)
        })
      },
       love3(){
        var url="http://127.0.0.1:8080/zx/xz3"
        this.axios.get(url).then(res=>{
            this.p3=res.data;
            console.log(res)
        })
      },
      /* 左边箭头 */
        btnLeft(){
            /* 获取对象 */
            var cpList=document.getElementById("cp_list")
            var s=this.q--;
            if(this.q<0){this.q=3}
            cpList.style.marginLeft=-s*this.liwidth+"px"
        },
        /* 右边箭头 */
        btnRight(){
            /* 获取对象 */
            var cpList=document.getElementById("cp_list")
            var s=this.n++;
            if(this.n==4){this.n=1;}
            cpList.style.marginLeft=-s*this.liwidth+"px"
        },
    },
    created(){
        this.love();
        this.love1();
        this.love2();
        this.love3();
      },
      components:{
        "headerr":Headerr,
        "footrt":Footrt,
    }
    
    }

</script>
<style>
    .biaoqian_1{
        width:990px;
        margin:0 auto;
    }
    .el-tabs__item:not(.is-disabled):hover{color:#ff838b}
    .el-tabs__item.is-active{color:#ff838b !important}
    .el-tabs__active-bar{background-color:#ff838b !important;}
    .leibiao_01{
        border-top:2px solid #E4E7ED;
    }
    /* .jianhuo{
        display:flex;
        position: relative;
    } */
    .fxjh{
        width:100%;
    }
    /* .jianhuo_01{
        position:absolute;
        top:2%;
        left:90%;
        color:#ff838b;
        border-bottom: 2px solid #ff838b;
        line-height: 30px;
        z-index: 10;
    } */
    .foods a p{
        font-size: 14px;
        color: black;
    }
    .foods a span{
        font-size: 14px;
        color: #ff838b;
    }
    .goumai{
        display: block;
        width:50px;
        border:1px solid #ff838b;
        margin:0 auto;
        border-radius: 15px;
        margin-top:1%;
    }
    
</style>
