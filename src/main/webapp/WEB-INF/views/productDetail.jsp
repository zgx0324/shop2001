<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品详情</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <style>
        input[type=number] {
            -moz-appearance: textfield;
        }
        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
    </style>
    <script>
        $(function () {
            $("#count").change(function () {
                if($(this).val()==''){
                    $(this).val(1)
                }
            })
        })
    </script>
</head>

<body style="position:relative;">
	<!--header-->
    <div class="zl-header">
    	<div class="zl-hd w1200">
        	<p class="hd-p1 f-l">
            	Hi!您好，欢迎来到宅客微购，请登录  <a href="注册.html">【免费注册】</a>
            </p>
        	<p class="hd-p2 f-r">
            	<a href="index.html">返回首页 (个人中心)</a><span>|</span>
                <a href="购物车.html">我的购物车</a><span>|</span>
                <a href="我的订单.html">我的订单</a>
            </p>
            <div style="clear:both;"></div>
        </div>
    </div>
	
    <!--logo search weweima-->
    <div class="logo-search w1200">
    	<div class="logo-box f-l">
        	<div class="logo f-l">
            	<a href="index.html" title="中林logo"><img src="${pageContext.request.contextPath}/images/zl2-01.gif" /></a>
            </div>
        	<div class="shangjia f-l">
            	<a href="JavaScript:;" class="shangjia-a1">[ 切换城市 ]</a>
            	<a href="JavaScript:;" class="shangjia-a2">商家入口</a>
                <div class="select-city">
        	<div class="sl-city-top">
            	<p class="f-l">切换城市</p>
                <a class="close-select-city f-r" href="JavaScript:;">
                	<img src="${pageContext.request.contextPath}/images/close-select-city.gif" />
                </a>
            </div>
            <div class="sl-city-con">
            	<p>西北</p>
                <dl>
                	<dt>重庆市</dt>
                    <dd>
                    	<a href="JavaScript:;">长寿区</a>
                        <a href="JavaScript:;">巴南区</a>
                        <a href="JavaScript:;">南岸区</a>
                        <a href="JavaScript:;">九龙坡区</a>
                        <a href="JavaScript:;">沙坪坝区</a>
                        <a href="JavaScript:;">北碚</a>
                        <a href="JavaScript:;">江北区</a>
                        <a href="JavaScript:;">渝北区</a>
                        <a href="JavaScript:;">大渡口区</a>
                        <a href="JavaScript:;">渝中区</a>
                        <a href="JavaScript:;">万州</a>
                        <a href="JavaScript:;">武隆</a>
                        <a href="JavaScript:;">晏家</a>
                        <a href="JavaScript:;">长寿湖</a>
                        <a href="JavaScript:;">云集</a>
                        <a href="JavaScript:;">华中</a>
                        <a href="JavaScript:;">林封</a>
                        <a href="JavaScript:;">双龙</a>
                        <a href="JavaScript:;">石回</a>
                        <a href="JavaScript:;">龙凤呈祥</a>
                        <a href="JavaScript:;">朝天门</a>
                        <a href="JavaScript:;">中华</a>
                        <a href="JavaScript:;">玉溪</a>
                        <a href="JavaScript:;">云烟</a>
                        <a href="JavaScript:;">红塔山</a>
                        <a href="JavaScript:;">真龙</a>
                        <a href="JavaScript:;">天子</a>
                        <a href="JavaScript:;">娇子</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>新疆</dt>
                    <dd>
                    	<a href="JavaScript:;">齐乌鲁木</a>
                        <a href="JavaScript:;">昌吉</a>
                        <a href="JavaScript:;">巴音</a>
                        <a href="JavaScript:;">郭楞</a>
                        <a href="JavaScript:;">伊犁</a>
                        <a href="JavaScript:;">阿克苏</a>
                        <a href="JavaScript:;">喀什</a>
                        <a href="JavaScript:;">哈密</a>
                        <a href="JavaScript:;">克拉玛依</a>
                        <a href="JavaScript:;">博尔塔拉</a>
                        <a href="JavaScript:;">吐鲁番</a>
                        <a href="JavaScript:;">和田</a>
                        <a href="JavaScript:;">石河子</a>
                        <a href="JavaScript:;">克孜勒苏</a>
                        <a href="JavaScript:;">阿拉尔</a>
                        <a href="JavaScript:;">五家渠</a>
                        <a href="JavaScript:;">图木舒克</a>
                        <a href="JavaScript:;">库尔勒</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>甘肃</dt>
                    <dd>
                    	<a href="JavaScript:;">兰州</a>
                        <a href="JavaScript:;">天水</a>
                        <a href="JavaScript:;">巴音</a>
                        <a href="JavaScript:;">白银</a>
                        <a href="JavaScript:;">庆阳</a>
                        <a href="JavaScript:;">平凉</a>
                        <a href="JavaScript:;">酒泉</a>
                        <a href="JavaScript:;">张掖</a>
                        <a href="JavaScript:;">武威</a>
                        <a href="JavaScript:;">定西</a>
                        <a href="JavaScript:;">金昌</a>
                        <a href="JavaScript:;">陇南</a>
                        <a href="JavaScript:;">临夏</a>
                        <a href="JavaScript:;">嘉峪关</a>
                        <a href="JavaScript:;">甘南</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>宁夏</dt>
                    <dd>
                    	<a href="JavaScript:;">银川</a>
                        <a href="JavaScript:;">吴忠</a>
                        <a href="JavaScript:;">石嘴山</a>
                        <a href="JavaScript:;">中卫</a>
                        <a href="JavaScript:;">固原</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>青海</dt>
                    <dd>
                    	<a href="JavaScript:;">西宁</a>
                        <a href="JavaScript:;">海西</a>
                        <a href="JavaScript:;">海北</a>
                        <a href="JavaScript:;">果洛</a>
                        <a href="JavaScript:;">海东</a>
                        <a href="JavaScript:;">黄南</a>
                        <a href="JavaScript:;">玉树</a>
                        <a href="JavaScript:;">海南</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
            </div>
        </div>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="erweima f-r">
        	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-04.gif" /></a>
        </div>
        <div class="search f-r">
        	<div class="search-info">
            	<input type="text" placeholder="请输入商品名称" />
                <button>搜索</button>
                <div style="clear:both;"></div>
            </div>
            <ul class="search-ul">
            	<li><a href="JavaScript:;">绿豆</a></li>
            	<li><a href="JavaScript:;">大米</a></li>
            	<li><a href="JavaScript:;">驱蚊</a></li>
            	<li><a href="JavaScript:;">洗面奶</a></li>
            	<li><a href="JavaScript:;">格力空调</a></li>
            	<li><a href="JavaScript:;">洗发</a></li>
            	<li><a href="JavaScript:;">护发</a></li>
            	<li><a href="JavaScript:;">葡萄</a></li>
            	<li><a href="JavaScript:;">脉动</a></li>
            	<li><a href="JavaScript:;">海鲜</a></li>
            	<li><a href="JavaScript:;">水产</a></li>
                <div style="clear:both;"></div>
            </ul>
        </div>
        <div style="clear:both;"></div>
    </div>

	<!--nav-->
    <div class="nav-box">
    	<div class="nav-kuai w1200">
        	<div class="nav-kuaijie yjp-hover1 f-l">
            	<a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
                <div class="kuaijie-box yjp-show1" style="display:none;">
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif" /><a href="搜索列表(有品牌).html">食品/饮料/酒水</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">饼干糕点</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">冲调保健</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">酒水</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-08.gif" /><a href="搜索列表(有品牌).html">粮油副食</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">厨房调味</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">大米/面粉</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">方便速食</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-09.gif" /><a href="搜索列表(有品牌).html">家庭清洁</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">厨房清洁</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">纸品湿巾</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">家私</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-10.gif" /><a href="搜索列表(有品牌).html">美妆洗护/个人护理</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">洗浴用品/身体护理</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">洗发护发</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-11.gif" /><a href="搜索列表(有品牌).html">母婴用品/玩具</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">宝宝喂养/洗护清洁</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">玩具</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">奶粉/辅食</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-12.gif" /><a href="搜索列表(有品牌).html">家居/家电</a></dt>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <ul class="nav-font f-l">
            	<li><a href="在线商城首页.html">在线商城</a></li>
            	<li><a href="餐饮娱乐首页.html">餐饮娱乐</a></li>
            	<li><a href="家政服务首页.html">家政服务</a></li>
            	<li><a href="美容美发首页.html">美容美发</a></li>
            	<li><a href="教育培训首页.html">教育培训</a></li>
            	<li><a href="汽车房产首页.html">汽车房产</a></li>
            	<li><a href="家居建材首页.html">家居建材</a></li>
            	<li><a href="二手市场首页.html">二手市场</a><span><img src="${pageContext.request.contextPath}/images/zl2-05.gif" /></span></li>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--内容开始-->
    <div class="details w1200">
    	<div class="deta-info1">
        	<div class="dt-if1-l f-l">
            	<div class="dt-if1-datu">
                	<ul qie-da="">
                       <li><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" /></a></li>
                       <li><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" /></a></li>
                       <li><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" /></a></li>
                       <li><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" /></a></li>
                       <li><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" /></a></li>
                       <li><a href="#"><img src="${pageContext.request.contextPath}/${product.image}" /></a></li>

                       <div style="clear:both;"></div>
                    </ul>
                </div>
                <div class="dt-if1-qietu">
                	<a class="dt-qie-left f-l" href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/dt-if1-qietu-left.gif" /></a>
                    <div class="dt-qie-con f-l">
                    	<ul qie-xiao="">
                        	<li class="current"><a href="#"><img style="width: 62px;height: 62px"  src="${pageContext.request.contextPath}/${product.image}" /></a></li>
                            <li><a href="#"><img style="width: 62px;height: 62px" src="${pageContext.request.contextPath}/${product.image}" /></a></li>
                            <li><a href="#"><img style="width: 62px;height: 62px" src="${pageContext.request.contextPath}/${product.image}" /></a></li>
                            <li><a href="#"><img style="width: 62px;height: 62px" src="${pageContext.request.contextPath}/${product.image}" /></a></li>
                            <li><a href="#"><img style="width: 62px;height: 62px" src="${pageContext.request.contextPath}/${product.image}" /></a></li>
                            <li><a href="#"><img style="width: 62px;height: 62px" src="${pageContext.request.contextPath}/${product.image}" /></a></li>
                            <li><a href="#"><img style="width: 62px;height: 62px" src="${pageContext.request.contextPath}/${product.image}" /></a></li>
            				<div style="clear:both;"></div>
                        </ul>
                    </div>
                	<a class="dt-qie-right f-r" href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/dt-if1-qietu-right.gif" /></a>
                </div>
                <div class="dt-if1-fx">
                	<span>商品编码:128618586</span>
                    <p>分享到：<a href="#"><img src="${pageContext.request.contextPath}/images/dt-xl.gif" /></a><a href="#"><img src="${pageContext.request.contextPath}/images/dt-kj.gif" /></a><a href="#"><img src="${pageContext.request.contextPath}/images/dt-wx.gif" /></a></p>
                </div>
            </div>
            
        	<div class="dt-if1-m f-l">
            	<div class="dt-ifm-hd">
                	<h3><a href="#">${product.pName}</a></h3>
                	<p>${fn:substring(product.pDesc,0 ,30 )}...</p>
                </div>
                <div class="dt-ifm-gojia">
                	<dl>
                    	<dt>宅购价</dt>
                        <dd>
                        	<p class="p1">
                               <span class="sp1">¥${product.shopPrice}</span><span class="sp2">${product.marketPrice}</span>
                            </p>
                            <p class="p2">
                            	<span class="sp1"><img src="${pageContext.request.contextPath}/images/dt-ifm-sp1-img.gif" />5分</span><span class="sp2">共有 2 条评价</span>
                            </p>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                </div>
                <dl class="dt-ifm-spot">
                	<dt>活动</dt>
                    <dd>
                    	<P><span>包邮</span>本店满50.00元免运费</P>
                    	<P><span>满赠</span>本店满500.00元赠300.00元礼品（随机赠送）</P>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl class="dt-ifm-box1">
                	<dt>送时</dt>
                    <dd>
                    	<select>
                        	<option>请选择配送日期</option>
                        	<option>2015-8-31</option>
                        	<option>2015-8-32</option>
                        </select>
                    	<select>
                        	<option>请选择配送时段</option>
                        	<option>上午</option>
                        	<option>下午</option>
                        </select>
                        <p>每天会有4个时间段统一配送，还有一个加急送，如果提前两天预定，还可以享受折扣哦！</p>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl class="dt-ifm-box2">
                	<dt>送至</dt>
                    <dd>
                    	<select>
                        	<option>新疆   乌鲁木齐</option>
                        	<option>新疆   乌鲁</option>
                        	<option>新疆   木齐</option>
                        </select>
                    	<span>请选择配送地址</span>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl class="dt-ifm-box3">
                	<dt>数量</dt>
                    <dd>
                    	<a class="box3-left" href="JavaScript:;">-</a>
                        <input type="number" id="count" value="1">
                    	<a class="box3-right" href="JavaScript:;">+</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <div class="dt-ifm-box4">
                	<button class="btn1">立即购买</button>
                	<button class="btn2">加入购物车</button>
                	<button class="btn3">收藏</button>
                </div>
            </div>
            
        	<div class="dt-if1-r f-r">
            	<div class="dt-ifr-hd">
                	<div class="dt-ifr-tit">
                    	<h3>三只松鼠百货专营店</h3>
                    </div>
                    <ul class="dt-ifr-ul1">
                    	<li>
                        	<p class="p1">4.61 ↑</p>
                        	<p class="p2">商品评分</p>
                        </li>
                    	<li>
                        	<p class="p1">4.61 ↑</p>
                        	<p class="p2">商品评分</p>
                        </li>
                    	<li>
                        	<p class="p1">4.61 ↑</p>
                        	<p class="p2">商品评分</p>
                        </li>
            			<div style="clear:both;"></div>
                    </ul>
                    <div class="dt-ifr-tel">
                    	<p>地址：重庆渝北区高新园昆仑大道60号　　　龙头寺火车站旁</p>
                        <p>TEL：18616854445</p>
                    </div>
                    <button class="dt-r-btn1">进入店铺</button>
                    <button class="dt-r-btn2">收藏店铺</button>
                </div>
                <div class="dt-ifr-fd">
                	<div class="dt-ifr-tit">
                    	<h3>同类推荐</h3>
                    </div>
                    <dl>
                    	<dt><a href="#"><img src="${pageContext.request.contextPath}/images/dt-ifr-fd-dt-tu.gif" /></a></dt>
                        <dd>
                        	<a href="#">【观音桥】罗兰钢管舞舞蹈体验</a>
                            <p>¥9.90</p>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                    <dl>
                    	<dt><a href="#"><img src="${pageContext.request.contextPath}/images/dt-ifr-fd-dt-tu.gif" /></a></dt>
                        <dd>
                        	<a href="#">【观音桥】罗兰钢管舞舞蹈体验</a>
                            <p>¥9.90</p>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                </div>
            </div>
            <div style="clear:both;"></div>
        </div>
        
        <div class="deta-info2">
        	<div class="dt-if2-l f-l">
            	<div class="if2-l-box1">
                	<div class="if2-tit">
                    	<h3>浏览记录</h3>
                    </div>
                    <ul>
                    	<li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li style="border-bottom:0;">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                    </ul>
                </div>
                <div class="if2-l-box1" style="margin-top:18px;">
                	<div class="if2-tit">
                    	<h3>看了又看</h3>
                    </div>
                    <ul>
                    	<li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li style="border-bottom:0;">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a class="if2-li-tit" href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="dt-if2-r f-r">
                <ul class="if2-tit2">
                    <li class="current" com-det="dt1"><a href="JavaScript:;">产品信息</a></li>
                    <li com-det="dt2"><a href="JavaScript:;">商品评论</a></li>
                    <li com-det="dt3"><a href="JavaScript:;">商家信息</a></li>
                    <div style="clear:both;"></div>
                </ul>
                <div style="border:1px solid #DBDBDB;" com-det-show="dt1">
                	<div class="if2-tu1">
                        <img src="${pageContext.request.contextPath}/images/if2-tu1.gif" />
                        <img src="${pageContext.request.contextPath}/images/if2-tu2.gif" style="margin-top:47px;" />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="if2-tu2">
                        <img src="${pageContext.request.contextPath}/images/if2-tu3.gif" />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="if2-tu3">
                        <img src="${pageContext.request.contextPath}/images/if2-tu4.gif" />
                    </div>
                    <ul class="if2-tu4">
                        <li><img src="${pageContext.request.contextPath}/images/if2-tu5.gif" /></li>
                        <li><img src="${pageContext.request.contextPath}/images/if2-tu6.gif" /></li>
                        <li><img src="${pageContext.request.contextPath}/images/if2-tu7.gif" /></li>
                        <div style="clear:both;"></div>
                    </ul>
                </div>
                <div style="display:none;" com-det-show="dt2">
                	<dl class="if2-r-box2">
                	<dt>
                    	<p class="box2-p1">好评率</p>
                    	<p class="box2-p2">96.5%</p>
                    	<p class="box2-p3">共539人评论</p>
                    </dt>
                    <dd>
                    	<P>买过的人觉得</P>
                        <ul>
                        	<li><a href="#">香脆可口(198)</a></li>
                        	<li><a href="#">口感不错(160)</a></li>
                        	<li><a href="#">分量足(84)</a></li>
                        	<li><a href="#">味道不错(47)</a></li>
                        	<li><a href="#">价格便宜(34)</a></li>
                        	<li><a href="#">包装不错(30)</a></li>
                        	<li><a href="#">吃货必备(26)</a></li>
                        	<li><a href="#">送货快(14)</a></li>
                        	<li><a href="#">孩子喜欢(4)</a></li>
            				<div style="clear:both;"></div>
                        </ul>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                	<div class="if2-r-box3">
                	<ul>
                    	<li class="current-li"><a href="#">全部（539）</a></li>
                    	<li><a href="#">好评（536）</a></li>
                    	<li><a href="#">中评（2）</a></li>
                    	<li><a href="#">差评（1）</a></li>
                    	<li><a href="#">图片（1）</a></li>
                    	<li><a href="#">追加评论（1）</a></li>
                        <div style="clear:both;"></div>
                    </ul>
                    <dl>
                    	<dt>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/box3-dt-tu.gif" /></a>
                        </dt>
                        <dd>
                        	<a href="#">胡**</a>
                            <p class="b3-p1">赞赞赞赞赞赞赞赞赞赞赞赞赞！！！！！！！！！</p>
                            <p class="b3-p2">2015-12-12    16:57:22  </p>
                        </dd>
            			<div style="clear:both;"></div>
                    </dl>
                    <dl>
                    	<dt>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/box3-dt-tu.gif" /></a>
                        </dt>
                        <dd>
                        	<a href="#">胡**</a>
                            <p class="b3-p1">赞赞赞赞赞赞赞赞赞赞赞赞赞！！！！！！！！！</p>
                            <p class="b3-p2"><span></span><span></span>2015-12-12    16:57:22</p>
                            <div style="clear:both;"></div>
                            <div class="b3-zuijia">
                            	<p class="zj-p1">追加评论：</p>
                            	<p class="zj-p2">赞赞赞赞赞赞赞赞赞赞赞赞赞！！！！！！！！！</p>
                            	<p class="zj-p3">2015-12-12    16:57:22</p>
                            </div>
                        </dd>
            			<div style="clear:both;"></div>
                    </dl>
                    
                    <!--分页-->
           			<div class="paging">
            	<div class="pag-left f-l">
                	<a href="#" class="about left-r f-l"><</a>
                    <ul class="left-m f-l">
                    	<li><a href="#">1</a></li>
                        <li class="current"><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                        <li><a href="#">...</a></li>
                        <li><a href="#">100</a></li>
                        <div style="clear:both;"></div>
                    </ul>
                	<a href="#" class="about left-l f-l">></a>
                    <div style="clear:both;"></div>
                </div>
            	<div class="pag-right f-l">
                	<div class="jump-page f-l">
                        到第<input type="text" />页
                    </div>
                    <button class="f-l">确定</button>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
            </div>
                </div>
                </div>
                <div class="if2-r-box4" style="display:none;" com-det-show="dt3">
                	<div class="b4-tit">
                    	<h3>店铺所有商品</h3>
                    </div>
                    <div class="b4-con1">
                    	<a href="#">饼干糕点</a>
                    	<a href="#">坚果果仁</a>
                    	<a href="#">海味肉食</a>
                    	<a href="#">糖果巧克力</a>
                    	<a href="#">豆干炒货</a>
                    	<a href="#">休闲膨化</a>
                    	<a href="#">饮品冲调</a>
                    	<a href="#">蜜饯果脯</a>
                    	<a href="#">方便速食</a>
                    	<a href="#">饼干糕点</a>
                    	<a href="#">坚果果仁</a>
                    	<a href="#">海味肉食</a>
                    	<a href="#">糖果巧克力</a>
                    	<a href="#">豆干炒货</a>
                    	<a href="#">休闲膨化</a>
                    	<a href="#">饮品冲调</a>
                    	<a href="#">蜜饯果脯</a>
                    	<a href="#">方便速食</a>
                    </div>
                	<div class="b4-tit">
                    	<h3>店铺热销商品</h3>
                    </div>
                    <ul>
                    	<li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
                        <li>
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/if2-l-box1-tu1.gif" /></a>
                            <a href="#">乐事Lay's 无限薯片（翡翠黄瓜味）104g/罐</a>
                            <p>¥6.90</p>
                        </li>
            			<div style="clear:both;"></div>
                    </ul>
                </div>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--底部一块-->
    <div class="footer-box">
    	<ul class="footer-info1 w1200">
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-86.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">号码保障</a></h3>
                <P>所有会员，手机短信验证</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-87.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">6*12小时客服</a></h3>
                <P>有任何问题随时免费资讯</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-88.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">专业专攻</a></h3>
                <P>我们只专注于建筑行业的信息服务</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-89.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">注册有礼</a></h3>
                <P>随时随地注册有大礼包</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-90.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">值得信赖</a></h3>
                <P>专业的产品，专业的团队</P>
            </li>
            <div style="clear:both;"></div>
        </ul>
    	<div class="footer-info2 w1200">
        	<div class="ft-if2-left f-l">
            	<dl>
                	<dt><a href="6-1服务协议.html">新手上路</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">购物流程</a>
                    	<a href="6-1服务协议.html">在线支付</a>
                    	<a href="6-1服务协议.html">投诉与建议</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">配送方式</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">货到付款区域</a>
                    	<a href="6-1服务协议.html">配送费标准</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">购物指南</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">订购流程</a>
                    	<a href="6-1服务协议.html">购物常见问题</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">售后服务</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">售后服务保障</a>
                    	<a href="6-1服务协议.html">退换货政策总则</a>
                    	<a href="6-1服务协议.html">自营商品退换细则</a>
                    </dd>
                </dl>
                <div style="clear:both;"></div>
            </div>
        	<div class="ft-if2-right f-r">
            	<h3>400-2298-223</h3>
                <p>周一至周日  9:00-24:00</p>
                <p>（仅收市话费）</p>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="footer-info3 w1200">
        	<p>
                <a href="#">免责条款</a><span>|</span>
                <a href="#">隐私保护</a><span>|</span>
                <a href="#">咨询热点</a><span>|</span>
                <a href="#">联系我们</a><span>|</span>
                <a href="#">公司简介</a>
            </p>
        	<p>
            	<a href="#">沪ICP备13044278号</a><span>|</span>
                <a href="#">合字B1.B2-20130004</a><span>|</span>
                <a href="#">营业执照</a><span>|</span>
                <a href="#">互联网药品信息服务资格证</a><span>|</span>
                <a href="#">互联网药品交易服务资格证</a>
            </p>
            <div class="ft-if3-tu1">
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-91.gif" /></a>
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-92.gif" /></a>
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-93.gif" /></a>
            </div>
        </div>
    </div>
</body>
</html>
