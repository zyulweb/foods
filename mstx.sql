SET NAMES UTF8;
DROP DATABASE IF EXISTS mstx;
CREATE DATABASE mstx CHARSET=UTF8;
USE mstx;

/*1*用户信息**/
CREATE TABLE ms_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),    
  gender INT                  
);
INSERT INTO ms_user VALUES(1,"tom",123456,"男");
INSERT INTO ms_user VALUES(null,"jerry",123456,"女");
/**导航栏**/
CREATE TABLE ms_nav(
  mid INT PRIMARY KEY AUTO_INCREMENT,
  mname VARCHAR(32)
);

/*菜谱种类*/
CREATE TABLE ms_family(
  mfid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT);       #菜品种类       
/**美食图片**/
CREATE TABLE ms_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  food_id INT,              #美食图片编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);
/****首页轮播广告商品****/
CREATE TABLE ms_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);






CREATE TABLE ms_zx_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),
  price VARCHAR(64),
  pic  VARCHAR(128),
  href VARCHAR(128)
);
INSERT INTO  ms_zx_product VALUES(1,"蛋清分离器烤箱油纸",30,"01.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"蛋清分离器烤箱油纸配件收纳包",99,"02.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"蛋清分离器烤箱油纸量勺套装",40,"03.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"蛋清分离器打蛋器烤箱油纸",30,"04.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"东北特产干豆腐",10,"05.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"大豆蛋白人造肉豆腐皮蛋白肉",3,"06.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"云丝干豆腐皮丝",15,"07.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"四川土特产开江豆笋",25,"08.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"极路客 智能行车记录仪",499,"09.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"ACA/北美电器 ATO-HB38HT电烤箱烤箱家用38L烘焙 蛋糕双门全自动",599,"10.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"ACA/北美电器 AF-SJW16家用多功能大口径原汁机全自动低速榨汁机",1599,"11.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"百花牌蜂蜜",59,"12.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"妙语纯净天然自产野生蜂蜜",49,"13.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"陈太女士滋补养生煲汤材料",20,"14.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"冰姨益脾化湿四神汤",22,"15.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"膳太虫草花干贝玉米汤",25,"16.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"惠而浦空气炸锅",429,"17.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"九阳家用智能空气电炸锅",399,"18.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"山本家用空气炸锅",328,"19.png","recipe.html");
INSERT INTO  ms_zx_product2 VALUES(null,"九阳电饼铛",179,"20.png","recipe.html");


-- 表的结构 `ms_zx_product2`
--

CREATE TABLE `ms_zx_product2` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_zx_product2`
--

INSERT INTO `ms_zx_product2` (`id`, `title`, `price`, `pic`, `href`) VALUES
(1, 'ACA/北美电器 AF-SJW16家用多功能大口径原汁机全自动低速榨汁机', '1599', '11.png', 'recipe.html'),
(2, '百花牌蜂蜜', '59', '12.png', 'recipe.html'),
(3, '妙语纯净天然自产野生蜂蜜', '49', '13.png', 'recipe.html'),
(4, '陈太女士滋补养生煲汤材料', '20', '14.png', 'recipe.html'),
(5, '膳太虫草花干贝玉米汤', '25', '16.png', 'recipe.html'),
(6, '惠而浦空气炸锅', '429', '17.png', 'recipe.html'),
(7, '九阳家用智能空气电炸锅', '399', '18.png', 'recipe.html'),
(8, '山本家用空气炸锅', '328', '19.png', 'recipe.html'),
(9, '九阳电饼铛', '179', '20.png', 'recipe.html'),
(10, '蛋清分离器烤箱油纸配件收纳包', '99', '02.png', 'recipe.html'),
(11, '蛋清分离器烤箱油纸量勺套装', '40', '03.png', 'recipe.html'),
(12, '蛋清分离器打蛋器烤箱油纸', '30', '04.png', 'recipe.html'),
(13, '东北特产干豆腐', '10', '05.png', 'recipe.html'),
(14, '大豆蛋白人造肉豆腐皮蛋白肉', '3', '06.png', 'recipe.html'),
(15, '云丝干豆腐皮丝', '15', '07.png', 'recipe.html'),
(16, '四川土特产开江豆笋', '25', '08.png', 'recipe.html'),
(17, '极路客 智能行车记录仪', '499', '09.png', 'recipe.html'),
(18, 'ACA/北美电器 ATO-HB38HT电烤箱烤箱家用38L烘焙 蛋糕双门全自动', '599', '10.png', 'recipe.html'),
(19, '东北特产干豆腐', '10', '05.png', 'recipe.html'),
(20, '大豆蛋白人造肉豆腐皮蛋白肉', '3', '06.png', 'recipe.html');

--
-- Indexes for dumped tables
--



--
-- 表的结构 `ms_zx_product3`
--

CREATE TABLE `ms_zx_product3` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_zx_product3`
--

INSERT INTO `ms_zx_product3` (`id`, `title`, `price`, `pic`, `href`) VALUES
(1, '大豆蛋白人造肉豆腐皮蛋白肉', '3', '06.png', 'recipe.html'),
(2, '云丝干豆腐皮丝', '15', '07.png', 'recipe.html'),
(3, '四川土特产开江豆笋', '25', '08.png', 'recipe.html'),
(4, '极路客 智能行车记录仪', '499', '09.png', 'recipe.html'),
(5, 'ACA/北美电器 ATO-HB38HT电烤箱烤箱家用38L烘焙 蛋糕双门全自动', '599', '10.png', 'recipe.html'),
(6, 'ACA/北美电器 AF-SJW16家用多功能大口径原汁机全自动低速榨汁机', '1599', '11.png', 'recipe.html'),
(7, '百花牌蜂蜜', '59', '12.png', 'recipe.html'),
(8, '妙语纯净天然自产野生蜂蜜', '49', '13.png', 'recipe.html'),
(9, '陈太女士滋补养生煲汤材料', '20', '14.png', 'recipe.html'),
(10, '膳太虫草花干贝玉米汤', '25', '16.png', 'recipe.html'),
(11, '惠而浦空气炸锅', '429', '17.png', 'recipe.html'),
(12, '九阳家用智能空气电炸锅', '399', '18.png', 'recipe.html'),
(13, '山本家用空气炸锅', '328', '19.png', 'recipe.html'),
(14, '蛋清分离器烤箱油纸配件收纳包', '99', '02.png', 'recipe.html'),
(15, '蛋清分离器烤箱油纸量勺套装', '40', '03.png', 'recipe.html'),
(16, '蛋清分离器打蛋器烤箱油纸', '30', '04.png', 'recipe.html'),
(17, '东北特产干豆腐', '10', '05.png', 'recipe.html'),
(18, '四川土特产开江豆笋', '25', '08.png', 'recipe.html'),
(19, '极路客 智能行车记录仪', '499', '09.png', 'recipe.html'),
(20, 'ACA/北美电器 ATO-HB38HT电烤箱烤箱家用38L烘焙 蛋糕双门全自动', '599', '10.png', 'recipe.html');

--
-- Indexes for dumped tables
--

--
-- 表的结构 `ms_zx_product4`
--

CREATE TABLE `ms_zx_product4` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_zx_product4`
--

INSERT INTO `ms_zx_product4` (`id`, `title`, `price`, `pic`, `href`) VALUES
(1, '陈太女士滋补养生煲汤材料', '20', '14.png', 'recipe.html'),
(2, '膳太虫草花干贝玉米汤', '25', '16.png', 'recipe.html'),
(3, '惠而浦空气炸锅', '429', '17.png', 'recipe.html'),
(4, '九阳家用智能空气电炸锅', '399', '18.png', 'recipe.html'),
(5, '山本家用空气炸锅', '328', '19.png', 'recipe.html'),
(6, '蛋清分离器烤箱油纸配件收纳包', '99', '02.png', 'recipe.html'),
(7, '蛋清分离器烤箱油纸量勺套装', '40', '03.png', 'recipe.html'),
(8, '蛋清分离器打蛋器烤箱油纸', '30', '04.png', 'recipe.html'),
(9, '东北特产干豆腐', '10', '05.png', 'recipe.html'),
(10, '大豆蛋白人造肉豆腐皮蛋白肉', '3', '06.png', 'recipe.html'),
(11, '云丝干豆腐皮丝', '15', '07.png', 'recipe.html'),
(12, '四川土特产开江豆笋', '25', '08.png', 'recipe.html'),
(13, '极路客 智能行车记录仪', '499', '09.png', 'recipe.html'),
(14, 'ACA/北美电器 ATO-HB38HT电烤箱烤箱家用38L烘焙 蛋糕双门全自动', '599', '10.png', 'recipe.html'),
(15, 'ACA/北美电器 AF-SJW16家用多功能大口径原汁机全自动低速榨汁机', '1599', '11.png', 'recipe.html'),
(16, '百花牌蜂蜜', '59', '12.png', 'recipe.html'),
(17, '妙语纯净天然自产野生蜂蜜', '49', '13.png', 'recipe.html'),
(18, '蛋清分离器烤箱油纸量勺套装', '40', '03.png', 'recipe.html'),
(19, '蛋清分离器打蛋器烤箱油纸', '30', '04.png', 'recipe.html'),
(20, '东北特产干豆腐', '10', '05.png', 'recipe.html');

--
-- Indexes for dumped tables
--


-- 表的结构 `ms_zx_hongpei`
--

CREATE TABLE `ms_zx_hongpei` (
  `id` int(11) NOT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `manei` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_zx_hongpei`
--

INSERT INTO `ms_zx_hongpei` (`id`, `pic`, `title`, `price`, `manei`) VALUES
(1, 'c180 (1).jpg', '创意DIY带盖冰棍冰棒冰糕雪糕模具', '9元包邮，自己在家动手制作冰棍，环保健康又有乐趣。四种不同颜色的手柄，轻松区别不同口味，想要什么一目了然。', '1.48'),
(2, 'c180 (2).jpg', '\n儿童冰棒雪糕模具', '全国包邮，权威质检认证，无毒无味，儿童硅胶雪糕diy模具', '49.8'),
(3, 'c180 (3).jpg', '\n日本Fasola硅胶冰格冰块模具', '包邮，趣味无限，让你冰爽一整夏，多种用途：冰块、巧克力、果冻、布丁等甜品', '22.8'),
(4, 'c180 (4).jpg', '\n2连4连爪爪冰棍熊掌雪糕冰淇淋模具', '包邮，2连适合家用，4连适合商用，铂金硅胶，完全无味，结构简单，不漏，不需要加增稠剂也不会漏哟，雪糕液稍稍稠一点点就可以了', '22.8'),
(5, 'c180 (5).jpg', '\n美国进口ZOKU可爱动物形状冰棒模具', '包邮，萌萌哒kitty卡通图案，深受小朋友和女性的欢迎', '22.8'),
(6, 'c180 (6).jpg', '\n卡通冰淇淋雪糕模具6格动漫', '包邮，6个卡通人物：海绵宝宝/奥特曼/大嘴猴/KT猫/叮当猫/流氓兔', '22.8'),
(7, 'c180 (7).jpg', '\n正品日本萌萌哒猫咪6连模棉花糖模具巧克力模硅胶模', '包邮，百变猫咪，萌萌萌的猫咪咪咪', '22.8'),
(8, 'c180 (13).jpg', '\n儿童冰棒雪糕模具', '全国包邮，权威质检认证，无毒无味，儿童硅胶雪糕diy模具', '49.8'),
(9, 'c180 (12).jpg', '\n日本Fasola硅胶冰格冰块模具', '包邮，趣味无限，让你冰爽一整夏，多种用途：冰块、巧克力、果冻、布丁等甜品', '22.8'),
(10, 'c180 (11).jpg', '\n2连4连爪爪冰棍熊掌雪糕冰淇淋模具', '包邮，2连适合家用，4连适合商用，铂金硅胶，完全无味，结构简单，不漏，不需要加增稠剂也不会漏哟，雪糕液稍稍稠一点点就可以了', '22.8'),
(11, 'c180 (10).jpg', '\n美国进口ZOKU可爱动物形状冰棒模具', '包邮，萌萌哒kitty卡通图案，深受小朋友和女性的欢迎', '22.8'),
(12, 'c180 (9).jpg', '\n卡通冰淇淋雪糕模具6格动漫', '包邮，6个卡通人物：海绵宝宝/奥特曼/大嘴猴/KT猫/叮当猫/流氓兔', '22.8'),
(13, 'c180 (8).jpg', '\n正品日本萌萌哒猫咪6连模棉花糖模具巧克力模硅胶模', '包邮，百变猫咪，萌萌萌的猫咪咪咪', '22.8'),
(14, 'c180 (14).jpg', '创意DIY带盖冰棍冰棒冰糕雪糕模具', '9元包邮，自己在家动手制作冰棍，环保健康又有乐趣。四种不同颜色的手柄，轻松区别不同口味，想要什么一目了然。', '1.48');

--
-- Indexes for dumped tables
--


-- 表的结构 `ms_zx_hongpei1`
--

CREATE TABLE `ms_zx_hongpei1` (
  `id` int(11) NOT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `manei` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_zx_hongpei1`
--

INSERT INTO `ms_zx_hongpei1` (`id`, `pic`, `title`, `price`, `manei`) VALUES
(1, 'c180 (5).jpg', '\n美国进口ZOKU可爱动物形状冰棒模具', '包邮，萌萌哒kitty卡通图案，深受小朋友和女性的欢迎', '￥22.8'),
(2, 'c180 (6).jpg', '\n卡通冰淇淋雪糕模具6格动漫', '包邮，6个卡通人物：海绵宝宝/奥特曼/大嘴猴/KT猫/叮当猫/流氓兔', '￥22.8'),
(3, 'c180 (7).jpg', '\n正品日本萌萌哒猫咪6连模棉花糖模具巧克力模硅胶模', '包邮，百变猫咪，萌萌萌的猫咪咪咪', '￥22.8'),
(4, 'c180 (14).jpg', '创意DIY带盖冰棍冰棒冰糕雪糕模具', '9元包邮，自己在家动手制作冰棍，环保健康又有乐趣。四种不同颜色的手柄，轻松区别不同口味，想要什么一目了然。', '￥1.48'),
(5, 'c180 (13).jpg', '\n儿童冰棒雪糕模具', '全国包邮，权威质检认证，无毒无味，儿童硅胶雪糕diy模具', '￥49.8'),
(6, 'c180 (12).jpg', '\n日本Fasola硅胶冰格冰块模具', '包邮，趣味无限，让你冰爽一整夏，多种用途：冰块、巧克力、果冻、布丁等甜品', '￥22.8'),
(7, 'c180 (11).jpg', '\n2连4连爪爪冰棍熊掌雪糕冰淇淋模具', '包邮，2连适合家用，4连适合商用，铂金硅胶，完全无味，结构简单，不漏，不需要加增稠剂也不会漏哟，雪糕液稍稍稠一点点就可以了', '￥22.8'),
(8, 'c180 (10).jpg', '\n美国进口ZOKU可爱动物形状冰棒模具', '包邮，萌萌哒kitty卡通图案，深受小朋友和女性的欢迎', '￥22.8'),
(9, 'c180 (9).jpg', '\n卡通冰淇淋雪糕模具6格动漫', '包邮，6个卡通人物：海绵宝宝/奥特曼/大嘴猴/KT猫/叮当猫/流氓兔', '￥22.8'),
(10, 'c180 (8).jpg', '\n正品日本萌萌哒猫咪6连模棉花糖模具巧克力模硅胶模', '包邮，百变猫咪，萌萌萌的猫咪咪咪', '￥22.8'),
(11, 'c180 (1).jpg', '创意DIY带盖冰棍冰棒冰糕雪糕模具', '9元包邮，自己在家动手制作冰棍，环保健康又有乐趣。四种不同颜色的手柄，轻松区别不同口味，想要什么一目了然。', '￥1.48'),
(12, 'c180 (2).jpg', '\n儿童冰棒雪糕模具', '全国包邮，权威质检认证，无毒无味，儿童硅胶雪糕diy模具', '￥49.8'),
(13, 'c180 (3).jpg', '\n日本Fasola硅胶冰格冰块模具', '包邮，趣味无限，让你冰爽一整夏，多种用途：冰块、巧克力、果冻、布丁等甜品', '￥22.8'),
(14, 'c180 (4).jpg', '\n2连4连爪爪冰棍熊掌雪糕冰淇淋模具', '包邮，2连适合家用，4连适合商用，铂金硅胶，完全无味，结构简单，不漏，不需要加增稠剂也不会漏哟，雪糕液稍稍稠一点点就可以了', '￥22.8');

--
-- Indexes for dumped tables

-- 烘培
CREATE TABLE ms_zx_hongpei2(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic  VARCHAR(128),
  title VARCHAR(32),
  price VARCHAR(64),
  manei VARCHAR(32)
);
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (1).jpg","创意DIY带盖冰棍冰棒冰糕雪糕模具","9元包邮，自己在家动手制作冰棍，环保健康又有乐趣。四种不同颜色的手柄，轻松区别不同口味，想要什么一目了然。","￥1.48");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (2).jpg","
儿童冰棒雪糕模具","全国包邮，权威质检认证，无毒无味，儿童硅胶雪糕diy模具","￥49.8");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (3).jpg","
日本Fasola硅胶冰格冰块模具","包邮，趣味无限，让你冰爽一整夏，多种用途：冰块、巧克力、果冻、布丁等甜品","￥22.8");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (4).jpg","
2连4连爪爪冰棍熊掌雪糕冰淇淋模具","包邮，2连适合家用，4连适合商用，铂金硅胶，完全无味，结构简单，不漏，不需要加增稠剂也不会漏哟，雪糕液稍稍稠一点点就可以了","￥22.8");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (5).jpg","
美国进口ZOKU可爱动物形状冰棒模具","包邮，萌萌哒kitty卡通图案，深受小朋友和女性的欢迎","￥22.8");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (6).jpg","
卡通冰淇淋雪糕模具6格动漫","包邮，6个卡通人物：海绵宝宝/奥特曼/大嘴猴/KT猫/叮当猫/流氓兔","￥22.8");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (7).jpg","
正品日本萌萌哒猫咪6连模棉花糖模具巧克力模硅胶模","包邮，百变猫咪，萌萌萌的猫咪咪咪","￥22.8");

INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (14).jpg","创意DIY带盖冰棍冰棒冰糕雪糕模具","9元包邮，自己在家动手制作冰棍，环保健康又有乐趣。四种不同颜色的手柄，轻松区别不同口味，想要什么一目了然。","￥1.48");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (13).jpg","
儿童冰棒雪糕模具","全国包邮，权威质检认证，无毒无味，儿童硅胶雪糕diy模具","￥49.8");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (12).jpg","
日本Fasola硅胶冰格冰块模具","包邮，趣味无限，让你冰爽一整夏，多种用途：冰块、巧克力、果冻、布丁等甜品","￥22.8");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (11).jpg","
2连4连爪爪冰棍熊掌雪糕冰淇淋模具","包邮，2连适合家用，4连适合商用，铂金硅胶，完全无味，结构简单，不漏，不需要加增稠剂也不会漏哟，雪糕液稍稍稠一点点就可以了","￥22.8");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (10).jpg","
美国进口ZOKU可爱动物形状冰棒模具","包邮，萌萌哒kitty卡通图案，深受小朋友和女性的欢迎","￥22.8");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (9).jpg","
卡通冰淇淋雪糕模具6格动漫","包邮，6个卡通人物：海绵宝宝/奥特曼/大嘴猴/KT猫/叮当猫/流氓兔","￥22.8");
INSERT INTO ms_zx_hongpei2 VALUES(null,"c180 (8).jpg","
正品日本萌萌哒猫咪6连模棉花糖模具巧克力模硅胶模","包邮，百变猫咪，萌萌萌的猫咪咪咪","￥22.8");


-- 分类全部
CREATE TABLE ms_zx_quanbu(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(32),
  title1 VARCHAR(32),
  title2 VARCHAR(32),
  title3 VARCHAR(32),
  title4 VARCHAR(32),
  pic VARCHAR(128),
  pic1  VARCHAR(128),
  pic2 VARCHAR(128),
  pic3  VARCHAR(128),
  pic4  VARCHAR(128),
  pic5  VARCHAR(128),
  pic6  VARCHAR(128)
);
INSERT INTO ms_zx_quanbu VALUES(null,"烘培","烘培面粉","乳制品","半成品","烘培模具","c180 (1).jpg","c180 (2).jpg","c180 (3).jpg","c180 (4).jpg","c180 (5).jpg","c180 (6).jpg","c180 (7).jpg");
INSERT INTO ms_zx_quanbu VALUES(null,"母婴","奶粉辅食","孕产妇","洗护喂养","早教玩具","c180 (8).jpg","c180 (9).jpg","c180 (10).jpg","c180 (11).jpg","c180 (12).jpg","c180 (13).jpg","c180 (14).jpg");
INSERT INTO ms_zx_quanbu VALUES(null,"果蔬生鲜","半成品","新鲜水果","水产海鲜","生肉禽蛋","c180 (15).jpg","c180 (16).jpg","c180 (17).jpg","c180 (18).jpg","c180 (19).jpg","c180 (20).jpg","c180 (21).jpg");
INSERT INTO ms_zx_quanbu VALUES(null,"休闲零食","坚果炒货","果干蜜饯","饼干糕点","糖果","c180 (22).jpg","c180 (23).jpg","c180 (24).jpg","c180 (25).jpg","c180 (26).jpg","c180 (27).jpg","c180 (28).jpg");






CREATE TABLE ms_fb_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),
  price VARCHAR(64),
  pic  VARCHAR(128),
  href VARCHAR(128)
);
INSERT INTO  ms_fb_product VALUES(1,"冰姨益脾化湿四神汤",22,"15.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"膳太虫草花干贝玉米汤",25,"16.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"惠而浦空气炸锅",429,"17.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"九阳家用智能空气电炸锅",399,"18.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"山本家用空气炸锅",328,"19.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"九阳电饼铛",179,"20.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"蛋清分离器烤箱油纸",30,"01.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"蛋清分离器烤箱油纸配件收纳包",99,"02.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"蛋清分离器烤箱油纸量勺套装",40,"03.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"蛋清分离器打蛋器烤箱油纸",30,"04.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"东北特产干豆腐",10,"05.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"大豆蛋白人造肉豆腐皮蛋白肉",3,"06.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"云丝干豆腐皮丝",15,"07.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"四川土特产开江豆笋",25,"08.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"极路客 智能行车记录仪",499,"09.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"ACA/北美电器 ATO-HB38HT电烤箱烤箱家用38L烘焙 蛋糕双门全自动",599,"10.png","recipe.html");
INSERT INTO  ms_zx_product VALUES(null,"ACA/北美电器 AF-SJW16家用多功能大口径原汁机全自动低速榨汁机",1599,"11.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"百花牌蜂蜜",59,"12.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"妙语纯净天然自产野生蜂蜜",49,"13.png","recipe.html");
INSERT INTO  ms_fb_product VALUES(null,"陈太女士滋补养生煲汤材料",20,"14.png","recipe.html");

CREATE TABLE ms_pc_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),
  price VARCHAR(64),
  pic  VARCHAR(128),
  href VARCHAR(128)
);
INSERT INTO  ms_pc_product VALUES(1,"大豆蛋白人造肉豆腐皮蛋白肉",3,"06.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"云丝干豆腐皮丝",15,"07.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"四川土特产开江豆笋",25,"08.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"惠而浦空气炸锅",429,"17.png","recipe.html");

INSERT INTO  ms_pc_product VALUES(null,"九阳家用智能空气电炸锅",399,"18.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"山本家用空气炸锅",328,"19.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"九阳电饼铛",179,"20.png","recipe.html");

INSERT INTO  ms_pc_product VALUES(null,"蛋清分离器烤箱油纸",30,"01.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"蛋清分离器烤箱油纸配件收纳包",99,"02.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"蛋清分离器烤箱油纸量勺套装",40,"03.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"蛋清分离器打蛋器烤箱油纸",30,"04.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"东北特产干豆腐",10,"05.png","recipe.html");

INSERT INTO  ms_pc_product VALUES(null,"极路客 智能行车记录仪",499,"09.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"ACA/北美电器 ATO-HB38HT电烤箱烤箱家用38L烘焙 蛋糕双门全自动",599,"10.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"ACA/北美电器 AF-SJW16家用多功能大口径原汁机全自动低速榨汁机",1599,"11.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"百花牌蜂蜜",59,"12.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"冰姨益脾化湿四神汤",22,"15.png","recipe.html");

INSERT INTO  ms_pc_product VALUES(null,"膳太虫草花干贝玉米汤",25,"16.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"妙语纯净天然自产野生蜂蜜",49,"13.png","recipe.html");
INSERT INTO  ms_pc_product VALUES(null,"陈太女士滋补养生煲汤材料",20,"14.png","recipe.html");

CREATE TABLE ms_rq_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),
  price VARCHAR(64),
  pic  VARCHAR(128),
  href VARCHAR(128)
);
INSERT INTO  ms_rq_product VALUES(1,"九阳家用智能空气电炸锅",399,"18.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"山本家用空气炸锅",328,"19.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"九阳电饼铛",179,"20.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"膳太虫草花干贝玉米汤",25,"16.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"妙语纯净天然自产野生蜂蜜",49,"13.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"陈太女士滋补养生煲汤材料",20,"14.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"极路客 智能行车记录仪",499,"09.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"ACA/北美电器 ATO-HB38HT电烤箱烤箱家用38L烘焙 蛋糕双门全自动",599,"10.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"ACA/北美电器 AF-SJW16家用多功能大口径原汁机全自动低速榨汁机",1599,"11.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"百花牌蜂蜜",59,"12.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"冰姨益脾化湿四神汤",22,"15.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"蛋清分离器烤箱油纸",30,"01.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"蛋清分离器烤箱油纸配件收纳包",99,"02.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"蛋清分离器烤箱油纸量勺套装",40,"03.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"蛋清分离器打蛋器烤箱油纸",30,"04.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"东北特产干豆腐",10,"05.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"大豆蛋白人造肉豆腐皮蛋白肉",3,"06.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"云丝干豆腐皮丝",15,"07.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"四川土特产开江豆笋",25,"08.png","recipe.html");
INSERT INTO  ms_rq_product VALUES(null,"惠而浦空气炸锅",429,"17.png","recipe.html");
/****菜谱****/
CREATE TABLE ms_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  author VARCHAR(128),
  mainingredient VARCHAR(128),    #主料
  subsidiary  VARCHAR(128),    #辅料
  pic VARCHAR(128),
  href VARCHAR(128)
);
INSERT INTO  ms_index_product VALUES(1,"水炒香葱鸡蛋","花鱼儿","ad","ad","01.jpg","recipe.html");
INSERT INTO  ms_index_product VALUES(NULL,"红糖馒头","烟雨心灵","ad","ad","02.jpg","recipe.html");
INSERT INTO  ms_index_product VALUES(NULL,"口水鸡","诗韵墨香","ad","ad","03.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"牛肉炒黄瓜","逝去的爱情","ad","ad","04.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"木耳银耳羹","尔冬升","ad","ad","05.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"南瓜胡萝卜米糊","风意画","ad","ad","06.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"曲奇","QQ爱烘焙","ad","ad","07.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"鸡蛋肉饼","寰宇","ad","ad","08.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"燕麦饼干","蒸烤教学服务","ad","ad","09.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"豆沙包","烟雨心灵","ad","ad","10.pic","recipe.html");
INSERT INTO ms_index_product VALUES(null,"红葱黄豆酱蒸牛肉","Rare食记","ad","ad","11.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"虾仁披萨","搬个凳子看戏","ad","ad","12.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"榨菜牛肉面","贤乐斋","ad","ad","13.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"时蔬鸡翅","搬个凳子看戏","ad","ad","14.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"酱烤面筋","搬个凳子看戏","ad","ad","15.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"黑全麦馒头","搬个凳子看戏","ad","ad","16.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"金枪鱼紫米饭团","寻找桃花岛","ad","ad","17.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"拌茄子","飞舞的夏花","ad","ad","18.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"车厘子裸蛋糕","蓝胖子不素胖纸","ad","ad","19.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"爽口黄瓜","烟雨心灵","ad","ad","20.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"油豆腐烧肉","芊芊","ad","ad","21.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"芽菜肉末炒豆","不做妖精好多年","ad","ad","22.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"丝瓜酿肉","芊芊","ad","ad","23.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"黄油桃藜麦沙拉","lin悠然","ad","ad","24.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"清炒木耳菜","芊芊","ad","ad","25.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"苦瓜炒肉片","琪—feXjZ8E2","ad","ad","26.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"芒果椰浆凉糕","爱生活的馋猫","ad","ad","27.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"冬瓜薏米鸭汤","缘豆儿","ad","ad","28.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"赛螃蟹","鱼儿厨房","ad","ad","29.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"煎馒头片","滋滋d美味","ad","ad","30.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"凉拌鸡翅根","月亮私家烘焙","ad","ad","31.jpg","recipe.html");
INSERT INTO ms_index_product VALUES(null,"西红柿面片汤","小时光姑娘","ad","ad","32.jpg","recipe.html");


CREATE TABLE ms_index_product2(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  author VARCHAR(128),
  mainingredient VARCHAR(128),    #主料
  subsidiary  VARCHAR(128),    #辅料
  pic VARCHAR(128),
  href VARCHAR(128)
);

INSERT INTO ms_index_product2 VALUES(1,"燕麦饼干","蒸烤教学服务","ad","ad","09.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"豆沙包","烟雨心灵","ad","ad","10.pic","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"红葱黄豆酱蒸牛肉","Rare食记","ad","ad","11.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"虾仁披萨","搬个凳子看戏","ad","ad","12.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"榨菜牛肉面","贤乐斋","ad","ad","13.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"时蔬鸡翅","搬个凳子看戏","ad","ad","14.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"酱烤面筋","搬个凳子看戏","ad","ad","15.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"黑全麦馒头","搬个凳子看戏","ad","ad","16.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"金枪鱼紫米饭团","寻找桃花岛","ad","ad","17.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"拌茄子","飞舞的夏花","ad","ad","18.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"车厘子裸蛋糕","蓝胖子不素胖纸","ad","ad","19.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"爽口黄瓜","烟雨心灵","ad","ad","20.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"油豆腐烧肉","芊芊","ad","ad","21.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"芽菜肉末炒豆","不做妖精好多年","ad","ad","22.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"丝瓜酿肉","芊芊","ad","ad","23.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"黄油桃藜麦沙拉","lin悠然","ad","ad","24.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"清炒木耳菜","芊芊","ad","ad","25.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"苦瓜炒肉片","琪—feXjZ8E2","ad","ad","26.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"芒果椰浆凉糕","爱生活的馋猫","ad","ad","27.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"冬瓜薏米鸭汤","缘豆儿","ad","ad","28.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"赛螃蟹","鱼儿厨房","ad","ad","29.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"煎馒头片","滋滋d美味","ad","ad","30.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"凉拌鸡翅根","月亮私家烘焙","ad","ad","31.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"西红柿面片汤","小时光姑娘","ad","ad","32.jpg","recipe.html");
INSERT INTO  ms_index_product2 VALUES(null,"水炒香葱鸡蛋","花鱼儿","ad","ad","01.jpg","recipe.html");
INSERT INTO  ms_index_product2 VALUES(NULL,"红糖馒头","烟雨心灵","ad","ad","02.jpg","recipe.html");
INSERT INTO  ms_index_product2 VALUES(NULL,"口水鸡","诗韵墨香","ad","ad","03.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"牛肉炒黄瓜","逝去的爱情","ad","ad","04.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"木耳银耳羹","尔冬升","ad","ad","05.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"南瓜胡萝卜米糊","风意画","ad","ad","06.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"曲奇","QQ爱烘焙","ad","ad","07.jpg","recipe.html");
INSERT INTO ms_index_product2 VALUES(null,"鸡蛋肉饼","寰宇","ad","ad","08.jpg","recipe.html");


CREATE TABLE ms_index_product3(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  author VARCHAR(128),
  mainingredient VARCHAR(128),    #主料
  subsidiary  VARCHAR(128),    #辅料
  pic VARCHAR(128),
  href VARCHAR(128)
);


INSERT INTO ms_index_product3 VALUES(1,"金枪鱼紫米饭团","寻找桃花岛","ad","ad","17.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"拌茄子","飞舞的夏花","ad","ad","18.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"车厘子裸蛋糕","蓝胖子不素胖纸","ad","ad","19.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"爽口黄瓜","烟雨心灵","ad","ad","20.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"油豆腐烧肉","芊芊","ad","ad","21.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"芽菜肉末炒豆","不做妖精好多年","ad","ad","22.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"丝瓜酿肉","芊芊","ad","ad","23.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"黄油桃藜麦沙拉","lin悠然","ad","ad","24.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"清炒木耳菜","芊芊","ad","ad","25.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"苦瓜炒肉片","琪—feXjZ8E2","ad","ad","26.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"芒果椰浆凉糕","爱生活的馋猫","ad","ad","27.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"冬瓜薏米鸭汤","缘豆儿","ad","ad","28.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"赛螃蟹","鱼儿厨房","ad","ad","29.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"煎馒头片","滋滋d美味","ad","ad","30.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"凉拌鸡翅根","月亮私家烘焙","ad","ad","31.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"西红柿面片汤","小时光姑娘","ad","ad","32.jpg","recipe.html");
INSERT INTO  ms_index_product3 VALUES(null,"水炒香葱鸡蛋","花鱼儿","ad","ad","01.jpg","recipe.html");
INSERT INTO  ms_index_product3 VALUES(NULL,"红糖馒头","烟雨心灵","ad","ad","02.jpg","recipe.html");
INSERT INTO  ms_index_product3 VALUES(NULL,"口水鸡","诗韵墨香","ad","ad","03.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"牛肉炒黄瓜","逝去的爱情","ad","ad","04.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"木耳银耳羹","尔冬升","ad","ad","05.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"南瓜胡萝卜米糊","风意画","ad","ad","06.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"曲奇","QQ爱烘焙","ad","ad","07.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"鸡蛋肉饼","寰宇","ad","ad","08.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"燕麦饼干","蒸烤教学服务","ad","ad","09.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"豆沙包","烟雨心灵","ad","ad","10.pic","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"红葱黄豆酱蒸牛肉","Rare食记","ad","ad","11.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"虾仁披萨","搬个凳子看戏","ad","ad","12.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"榨菜牛肉面","贤乐斋","ad","ad","13.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"时蔬鸡翅","搬个凳子看戏","ad","ad","14.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"酱烤面筋","搬个凳子看戏","ad","ad","15.jpg","recipe.html");
INSERT INTO ms_index_product3 VALUES(null,"黑全麦馒头","搬个凳子看戏","ad","ad","16.jpg","recipe.html");


CREATE TABLE ms_index_product4(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  author VARCHAR(128),
  mainingredient VARCHAR(128),    #主料
  subsidiary  VARCHAR(128),    #辅料
  pic VARCHAR(128),
  href VARCHAR(128)
);



INSERT INTO ms_index_product4 VALUES(1,"苦瓜炒肉片","琪—feXjZ8E2","ad","ad","26.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"芒果椰浆凉糕","爱生活的馋猫","ad","ad","27.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"冬瓜薏米鸭汤","缘豆儿","ad","ad","28.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"赛螃蟹","鱼儿厨房","ad","ad","29.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"煎馒头片","滋滋d美味","ad","ad","30.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"凉拌鸡翅根","月亮私家烘焙","ad","ad","31.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"西红柿面片汤","小时光姑娘","ad","ad","32.jpg","recipe.html");
INSERT INTO  ms_index_product4 VALUES(null,"水炒香葱鸡蛋","花鱼儿","ad","ad","01.jpg","recipe.html");
INSERT INTO  ms_index_product4 VALUES(NULL,"红糖馒头","烟雨心灵","ad","ad","02.jpg","recipe.html");
INSERT INTO  ms_index_product4 VALUES(NULL,"口水鸡","诗韵墨香","ad","ad","03.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"牛肉炒黄瓜","逝去的爱情","ad","ad","04.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"木耳银耳羹","尔冬升","ad","ad","05.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"南瓜胡萝卜米糊","风意画","ad","ad","06.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"曲奇","QQ爱烘焙","ad","ad","07.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"鸡蛋肉饼","寰宇","ad","ad","08.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"燕麦饼干","蒸烤教学服务","ad","ad","09.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"豆沙包","烟雨心灵","ad","ad","10.pic","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"红葱黄豆酱蒸牛肉","Rare食记","ad","ad","11.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"虾仁披萨","搬个凳子看戏","ad","ad","12.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"榨菜牛肉面","贤乐斋","ad","ad","13.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"时蔬鸡翅","搬个凳子看戏","ad","ad","14.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"酱烤面筋","搬个凳子看戏","ad","ad","15.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"黑全麦馒头","搬个凳子看戏","ad","ad","16.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"金枪鱼紫米饭团","寻找桃花岛","ad","ad","17.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"拌茄子","飞舞的夏花","ad","ad","18.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"车厘子裸蛋糕","蓝胖子不素胖纸","ad","ad","19.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"爽口黄瓜","烟雨心灵","ad","ad","20.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"油豆腐烧肉","芊芊","ad","ad","21.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"芽菜肉末炒豆","不做妖精好多年","ad","ad","22.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"丝瓜酿肉","芊芊","ad","ad","23.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"黄油桃藜麦沙拉","lin悠然","ad","ad","24.jpg","recipe.html");
INSERT INTO ms_index_product4 VALUES(null,"清炒木耳菜","芊芊","ad","ad","25.jpg","recipe.html");

CREATE TABLE ms_hb_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),
  details VARCHAR(128),
  price decimal(10,2),
  pic  VARCHAR(128)
);
INSERT INTO ms_hb_product VALUES(1,"创意DIY带盖冰棍冰棒冰糕雪糕模具","9元包邮，自己在家动手制作冰棍，环保健康又有乐趣。四种不同颜色的手柄，轻松区别不同口味，想要什么一目了然。",1.48,"010.png");
INSERT INTO ms_hb_product VALUES(null,"儿童冰棒雪糕模具","全国包邮，权威质检认证，无毒无味，儿童硅胶雪糕diy模具",49.80,"011.png");
INSERT INTO ms_hb_product VALUES(null,"日本Fasola硅胶冰格冰块模具","包邮，趣味无限，让你冰爽一整夏，多种用途：冰块、巧克力、果冻、布丁等甜品",22.90,"013.png");
INSERT INTO ms_hb_product VALUES(null,"2连4连爪爪冰棍熊掌雪糕冰淇淋模具","包邮，2连适合家用，4连适合商用，铂金硅胶，完全无味，结构简单，不漏，不需要加增稠剂也不会漏哟，雪糕液稍稍稠一点点就可以了。",29.00,"014.png");
INSERT INTO ms_hb_product VALUES(null,"美国进口ZOKU可爱动物形状冰棒模具","包邮，多姿多彩，自己DIY冰棒更健康",59.00,"015.png");
INSERT INTO ms_hb_product VALUES(null,"kitty创意手工冰淇淋带盖硅胶模具","包邮，萌萌哒kitty卡通图案，深受小朋友和女性的欢迎",15.80,"016.png");
INSERT INTO ms_hb_product VALUES(null,"现货 甘那许 KE022S意大利进口pavoni毛毛虫型蛋糕模矽胶模","时尚又美味",199.00,"017.png");
INSERT INTO ms_hb_product VALUES(null,"卡通冰淇淋雪糕模具6格动漫 ","包邮，6个卡通人物：海绵宝宝/奥特曼/大嘴猴/KT猫/叮当猫/流氓兔",17.80,"018.png");
INSERT INTO ms_hb_product VALUES(null,"亚马逊Zoku 时尚流行制作工具套装DIY进口儿童雪糕冰棒模具","包邮，简单上手，快速制作一款特别的棒冰！角色配件让冰棒的乐趣进入你的生活，根据你的想象自己制作小动物、卡通脸等各种各样的角色，或者你也可以按照说明书内的设计来模仿，创意无限，让你感受从未有...",136.00,"019.png");
INSERT INTO ms_hb_product VALUES(null,"正品日本萌萌哒猫咪6连模棉花糖模具巧克力模硅胶模","包邮，百变猫咪，萌萌萌的猫咪咪咪",88.00,"020.png");
INSERT INTO ms_hb_product VALUES(null,"男童自行车3-6岁12/14/16/18寸","包邮，骑行轻便，性能优越，大而舒适，性价比高",128.00,"021.png");
INSERT INTO ms_hb_product VALUES(null,"春夏月子服纯棉套装喂奶衣产妇哺乳睡衣","淘抢购2月23日8:00—2月24日7:59 买两套送亲子帽 速速抢购！",49.00,"022.png");
INSERT INTO ms_hb_product VALUES(null,"Mead Jonson 美赞臣 安儿宝Enfagrow 港版3段奶粉 (1-3岁)900g/罐","【6月25日仅此一天】香港正货直供，欧盟、香港严格标准，满足宝宝所需。",189.00,"023.png");
INSERT INTO ms_hb_product VALUES(null,"食物咬咬袋果蔬乐","大中小号网袋 防掉链",35.00,"024.png");
INSERT INTO ms_hb_product VALUES(null,"包邮日本大王男女宝宝游泳纸尿裤","游泳纸尿裤 手感柔软",34.50,"025.png");
INSERT INTO ms_hb_product VALUES(null,"茗匠竹茶具","这款茶盘以竹子为主料，竹子喜水，经茶水养润后会有包浆光泽，用来做茶盘那自然是极好的，若自己或家中长辈喜爱功夫茶，不妨参考一下本款茶盘。因为性价比很高了。...",80.00,"026.png");
INSERT INTO ms_hb_product VALUES(null,"ACA/北美电器 AHM-PE350A 多功能手持料理机 搅拌机婴儿辅食绞肉","婴儿辅食神器 不锈钢多功能 料理机搅拌器 包邮",199.00,"027.png");
INSERT INTO ms_hb_product VALUES(null,"杞帝乐头茬宁夏枸杞优质贡果苟杞子500g","淘抢购4月18日10:00—4月19日9:59 头茬中宁枸杞 大颗贡果 肉厚味甜",36.00,"028.png");
INSERT INTO ms_hb_product VALUES(null,"大菊花茶一朵一杯金丝黄菊贡菊30朵/盒","包邮，买2送杯-特级金丝皇菊，酷暑难耐，降火必备，月销1.6万份",48.80,"029.png");




