<template>
<div>
    <header1></header1>
    <div id="biaotou">
        <div id="biaotou_1">
            <a href="#">
                <img class="biao_tu" src="../img/logo.png" alt="">
            </a>
            <a href="#">
                <div class="biaoqian">珍选</div>
            </a>
            <ul id="tab" class="biaotou_2">
                <!-- <li class="yes_1" data-toggle="tab" data-id="channei_2"><router-link :to="{path:'/Zhenxuan'}">珍选首页</router-link></li>  -->
                <li data-toggle="tab" data-id="channei_3"><router-link class="sss" :to="{path:'/Zhenxuan'}">珍选首页</router-link></li>
                <li data-toggle="tab" data-id="channei_1" class="yes caishou">分类</li>
                
                <li data-toggle="tab" data-id="channei_3">清单</li>
                <li data-toggle="tab" data-id="channei_4">品测</li>
            </ul>   
        </div>
    </div>
    <div class="feilei__1">
        <el-tabs v-model="activeName" @tab-click="handleClick">
        <el-tab-pane label="全部" name="zong">
            <div id="quanbu">
                <div class="quanbu_1" v-for="(item,i) of d1" :key="i">
                    <div class="quanbu_01" >
                        <a class="yilian" href="">{{item.title}}</a>
                        <a href="">{{item.title1}}</a>
                        <a href="">{{item.title2}}</a>
                        <a href="">{{item.title3}}</a>
                        <a href="">{{item.title4}}</a>
                    </div>
                    <div class="quanbu_02">
                        <a class="quanbu_03" href="">
                            <img :src="'http://127.0.0.1:8080/img/fenlei/'+item.pic" alt="">
                        </a>
                        <div class="quanbu_05">
                            <a href="">
                                <img :src="'http://127.0.0.1:8080/img/fenlei/'+item.pic1" alt="">
                            </a>
                            <a class="quanbu_04" href="">
                                 <img :src="'http://127.0.0.1:8080/img/fenlei/'+item.pic2" alt="">
                            </a>
                            <a class="quanbu_04" href="">
                                 <img :src="'http://127.0.0.1:8080/img/fenlei/'+item.pic3" alt="">
                            </a>
                            <a href="">
                                 <img :src="'http://127.0.0.1:8080/img/fenlei/'+item.pic4" alt="">
                            </a>
                            <a class="quanbu_04" href="">
                                 <img :src="'http://127.0.0.1:8080/img/fenlei/'+item.pic5" alt="">
                            </a>
                            <a class="quanbu_04" href="">
                                <img :src="'http://127.0.0.1:8080/img/fenlei/'+item.pic6" alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </el-tab-pane>
        <el-tab-pane label="烘培" name="hongpei">
            <el-tabs v-model="activeName1" @tab-click="handleClick">
                <el-tab-pane label="推荐" name="tuijian">
                    <div class="hongpei_6" v-for="(item,i) of d2" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="最新" name="zuixin">
                    <div class="hongpei_6" v-for="(item,i) of d3" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="一月人气" name="renqi">
                    <div class="hongpei_6" v-for="(item,i) of d4" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
            </el-tabs>
       
        </el-tab-pane>
        <el-tab-pane label="母婴" name="muying">
            
            <el-tabs v-model="activeName2" @tab-click="handleClick">
                
                <el-tab-pane label="推荐" name="zuixin1">
                    <div class="hongpei_6" v-for="(item,i) of d3" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="最新" name="tuijian1">
                    <div class="hongpei_6" v-for="(item,i) of d2" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="一月人气" name="renqi1">
                    <div class="hongpei_6" v-for="(item,i) of d4" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
            </el-tabs>
            
        </el-tab-pane>
        <el-tab-pane label="果蔬生鲜" name="fushu">
            
            <el-tabs v-model="activeName3" @tab-click="handleClick">
                <el-tab-pane label="推荐" name="tuijian2">
                    <div class="hongpei_6" v-for="(item,i) of d2" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="最新" name="zuixin2">
                    <div class="hongpei_6" v-for="(item,i) of d3" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="一月人气" name="renqi2">
                    <div class="hongpei_6" v-for="(item,i) of d4" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
            </el-tabs>

        </el-tab-pane>
        <el-tab-pane label="休闲零食" name="lingshi">
            <el-tabs v-model="activeName4" @tab-click="handleClick">
                
                <el-tab-pane label="推荐" name="zuixin3">
                    <div class="hongpei_6" v-for="(item,i) of d3" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="最新" name="tuijian3">
                    <div class="hongpei_6" v-for="(item,i) of d2" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="一月人气" name="renqi3">
                    <div class="hongpei_6" v-for="(item,i) of d4" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
            </el-tabs>

        </el-tab-pane>

        <el-tab-pane label="饮品茶酒" name="chajiu">
            <el-tabs v-model="activeName5" @tab-click="handleClick">
                <el-tab-pane label="推荐" name="tuijian4">
                    <div class="hongpei_6" v-for="(item,i) of d2" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="最新" name="zuixin4">
                    <div class="hongpei_6" v-for="(item,i) of d3" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="一月人气" name="renqi4">
                    <div class="hongpei_6" v-for="(item,i) of d4" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
            </el-tabs>
        </el-tab-pane>
        <el-tab-pane label="粮油干货" name="ganhuo">
             <el-tabs v-model="activeName6" @tab-click="handleClick">
                
                <el-tab-pane label="推荐" name="zuixin5">
                    <div class="hongpei_6" v-for="(item,i) of d3" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="最新" name="tuijian5">
                    <div class="hongpei_6" v-for="(item,i) of d2" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="一月人气" name="renqi5">
                    <div class="hongpei_6" v-for="(item,i) of d4" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
            </el-tabs>

        </el-tab-pane>
        <el-tab-pane label="进口食品" name="shipin">
            <el-tabs v-model="activeName7" @tab-click="handleClick">
                <el-tab-pane label="推荐" name="tuijian6">
                    <div class="hongpei_6" v-for="(item,i) of d2" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="最新" name="zuixin6">
                    <div class="hongpei_6" v-for="(item,i) of d3" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="一月人气" name="renqi6">
                    <div class="hongpei_6" v-for="(item,i) of d4" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
            </el-tabs>
            
        </el-tab-pane>
        <el-tab-pane label="厨电厨具" name="chuju">
            
        <el-tabs v-model="activeName8" @tab-click="handleClick">
                
                <el-tab-pane label="推荐" name="zuixin7">
                    <div class="hongpei_6" v-for="(item,i) of d3" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="最新" name="tuijian7">
                    <div class="hongpei_6" v-for="(item,i) of d2" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="一月人气" name="renqi7">
                    <div class="hongpei_6" v-for="(item,i) of d4" :key="i">
                        <div id="binggun">
                        <a class="binggun_1" href="">
                            <img  :src="'http://127.0.0.1:8080/img/hongpei/'+item.pic" alt="">
                        </a>
                            <div id="binggun_01">
                                <h2 class="binggun_03">
                                    <a class="binggun_2" href="">{{item.title}}</a>
                                </h2>
                                <p class="subcontent">{{item.price}}</p>
                                <div class="substatus_1">
                                    <div class="left_1">
                                        <span>￥{{item.manei}}</span>　
                                    </div> 
                                    <a href="" class="right_1">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-tab-pane>
            </el-tabs>    
            
        </el-tab-pane>
    </el-tabs>
    </div>
    <footre></footre>
</div>
</template>

<script>
import Header1 from "../Foods/Header"
import Footre from "../Foods/Footr"

import"../css/fenlei.css"
import"../css/hongpei.css"

export default {
    data() {
      return {
        activeName: 'zong', activeName1: 'tuijian',
        activeName2: 'zuixin1',
        activeName3: 'tuijian2',
        activeName4: 'zuixin3',
        activeName5: 'tuijian4',
        activeName6: 'zuixin5',
        activeName7: 'tuijian6',
        activeName8: 'zuixin7',
        d1:[],
        d2:[],
        d3:[],
        d4:[]
      };
    },
    methods: {
      handleClick(tab, event) {
        console.log(tab, event);
      },
       you1(){
        var url="http://127.0.0.1:8080/zx/xz4"
        this.axios.get(url).then(res=>{
            this.d1=res.data;
            console.log(res)
        })
      },
      you2(){
        var url="http://127.0.0.1:8080/zx/xz5"
        this.axios.get(url).then(res=>{
            this.d2=res.data;
            console.log(res)
        })
      },
       you3(){
        var url="http://127.0.0.1:8080/zx/xz6"
        this.axios.get(url).then(res=>{
            this.d3=res.data;
            console.log(res)
        })
      },
       you4(){
        var url="http://127.0.0.1:8080/zx/xz7"
        this.axios.get(url).then(res=>{
            this.d4=res.data;
            console.log(res)
        })
      },
    },
    created(){
        this.you1();
        this.you2();
        this.you3();
        this.you4();
    //     var as=document.querySelectorAll("#tab>[data-toggle=tab]");
    //     var i=1;
    //     for(var a of as){
    //     a.onclick=function(){
    //         var id=this.getAttribute("data-id");
    //         var di=document.getElementById(id);
    //         di.style.zIndex=i;
    //         i++;
    //     }
    // }
    },
    components:{
    "header1":Header1,
    "footre":Footre
    }
}
</script>

<style>
#biaotou{
    margin-top:1%;
}
.yes_1 a{
    color:black;
}
.feilei__1{
    width:990px;
    margin:0 auto;
}
.hong_pei{
    border:1px solid red;
}
.hong_pei1{
    display:flex;
}
.hong_pei2{
    width:200px;
    height:200px;
    overflow: hidden;
}
.hong_pei2 img{
    width:200px;
    height:200px;
    transition: all .5s 
}
.hong_pei2 img:hover{
    transform: scale(1.1,1.1)
}
</style>
