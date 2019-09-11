<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>购物车</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/carts.css">


    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/plugins.css">
    <link rel="stylesheet" href="/css/style.css">

    <!-- Cusom css -->
    <link rel="stylesheet" href="/css/custom.css">
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />

    <!-- Modernizer js -->
    <script src="/js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body background="/images/background.jpg" style="background-repeat:no-repeat;background-size: cover;">
<div class="wrapper" id="wrapper" style="background: #b8daff">
    <!-- Header -->
    <header id="wn__header" class="header__area header__absolute sticky__header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                    <div class="logo">
                        <a href="/index">
                            <img src="/images/logo/logo.png" alt="logo images">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 d-none d-lg-block">
                    <nav class="mainmenu__nav">
                        <ul class="meninmenu d-flex justify-content-start">
                            <li><a href="/index">主页</a></li>
                            <li><a href="/shop-list">书单</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                    <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
                        <li class="wishlist"><a href="#"></a></li>
                        <li class="setting__bar__icon"><a class="setting__active" href="#"></a>
                            <div class="searchbar__content setting__block">
                                <div class="content-inner">
                                    <div class="switcher-currency">
                                        <c:choose>
                                            <c:when test="${!empty sessionScope.user}">
                                                <strong class="label switcher-label">
                                                    <span>${user.userName}</span>
                                                </strong>
                                                <div class="switcher-options">
                                                    <div class="switcher-currency-trigger">
                                                        <div class="setting__menu">
                                                            <span><a href="#">我的账户</a></span>
                                                            <span><a href="#">退出</a></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="label switcher-label" style="font-size: 20px"><a
                                                href="/login">注册/登录</a> </span>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="mobile-menu d-block d-lg-none">
            </div>
            <!-- Mobile Menu -->
        </div>
    </header>
    <!-- //Header -->
</div>
<section class="cartMain" style="background: #D5D5D5;opacity: 0.9;margin-top: 90px;">
    <div class="cartMain_hd">
        <ul class="order_lists cartTop">
            <li class="list_chk">
                <!--所有商品全选-->
                <input type="checkbox" id="all" class="whole_check">
                <label for="all"></label> 全选
            </li>
            <li class="list_con">商品信息</li>
            <li class="list_info">商品参数</li>
            <li class="list_price">单价</li>
            <li class="list_amount">数量</li>
            <li class="list_sum">金额</li>
            <li class="list_op">操作</li>
        </ul>
    </div>

    <div class="cartBox">
        <div class="shop_info">
            <div class="all_check">
                <!--店铺全选-->
                <input type="checkbox" id="shop_a" class="shopChoice">
                <label for="shop_a" class="shop"></label>
            </div>
            <div class="shop_name">
                店铺：
                <a href="javascript:;">搜猎人艺术生活</a>
            </div>
        </div>
        <div class="order_content">
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_2" class="son_check">
                    <label for="checkbox_2"></label>
                </li>
                <li class="list_con">
                    <div class="list_img">
                        <a href="javascript:;"><img src="/images/1.png" alt=""></a>
                    </div>
                    <div class="list_text">
                        <a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a>
                    </div>
                </li>
                <li class="list_info">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥980</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥980</p>
                </li>
                <li class="list_op">
                    <p class="del">
                        <a href="javascript:;" class="delBtn">移除商品</a>
                    </p>
                </li>
            </ul>
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_3" class="son_check">
                    <label for="checkbox_3"></label>
                </li>
                <li class="list_con">
                    <div class="list_img">
                        <a href="javascript:;"><img src="/images/2.png" alt=""></a>
                    </div>
                    <div class="list_text">
                        <a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a>
                    </div>
                </li>
                <li class="list_info">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥780</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥780</p>
                </li>
                <li class="list_op">
                    <p class="del">
                        <a href="javascript:;" class="delBtn">移除商品</a>
                    </p>
                </li>
            </ul>
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_6" class="son_check">
                    <label for="checkbox_6"></label>
                </li>
                <li class="list_con">
                    <div class="list_img">
                        <a href="javascript:;"><img src="/images/3.png" alt=""></a>
                    </div>
                    <div class="list_text">
                        <a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a>
                    </div>
                </li>
                <li class="list_info">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥180</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥180</p>
                </li>
                <li class="list_op">
                    <p class="del">
                        <a href="javascript:;" class="delBtn">移除商品</a>
                    </p>
                </li>
            </ul>
        </div>
    </div>

    <div class="cartBox">
        <div class="shop_info">
            <div class="all_check">
                <!--店铺全选-->
                <input type="checkbox" id="shop_b" class="shopChoice">
                <label for="shop_b" class="shop"></label>
            </div>
            <div class="shop_name">
                店铺：
                <a href="javascript:;">卷卷旗舰店</a>
            </div>
        </div>
        <div class="order_content">
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_4" class="son_check">
                    <label for="checkbox_4"></label>
                </li>
                <li class="list_con">
                    <div class="list_img">
                        <a href="javascript:;"><img src="/images/4.png" alt=""></a>
                    </div>
                    <div class="list_text">
                        <a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a>
                    </div>
                </li>
                <li class="list_info">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥1980</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥1980</p>
                </li>
                <li class="list_op">
                    <p class="del">
                        <a href="javascript:;" class="delBtn">移除商品</a>
                    </p>
                </li>
            </ul>
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_5" class="son_check">
                    <label for="checkbox_5"></label>
                </li>
                <li class="list_con">
                    <div class="list_img">
                        <a href="javascript:;"><img src="/images/5.png" alt=""></a>
                    </div>
                    <div class="list_text">
                        <a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a>
                    </div>
                </li>
                <li class="list_info">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥480</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥480</p>
                </li>
                <li class="list_op">
                    <p class="del">
                        <a href="javascript:;" class="delBtn">移除商品</a>
                    </p>
                </li>
            </ul>
        </div>
    </div>

    <div class="cartBox">
        <div class="shop_info">
            <div class="all_check">
                <!--店铺全选-->
                <input type="checkbox" id="shop_c" class="shopChoice">
                <label for="shop_c" class="shop"></label>
            </div>
            <div class="shop_name">
                店铺：
                <a href="javascript:;">卷卷旗舰店</a>
            </div>
        </div>
        <div class="order_content">
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_8" class="son_check">
                    <label for="checkbox_8"></label>
                </li>
                <li class="list_con">
                    <div class="list_img">
                        <a href="javascript:;"><img src="/images/1.png" alt=""></a>
                    </div>
                    <div class="list_text">
                        <a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a>
                    </div>
                </li>
                <li class="list_info">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥1980</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥1980</p>
                </li>
                <li class="list_op">
                    <p class="del">
                        <a href="javascript:;" class="delBtn">移除商品</a>
                    </p>
                </li>
            </ul>
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_9" class="son_check">
                    <label for="checkbox_9"></label>
                </li>
                <li class="list_con">
                    <div class="list_img">
                        <a href="javascript:;"><img src="/images/1.png" alt=""></a>
                    </div>
                    <div class="list_text">
                        <a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a>
                    </div>
                </li>
                <li class="list_info">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥480</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥480</p>
                </li>
                <li class="list_op">
                    <p class="del">
                        <a href="javascript:;" class="delBtn">移除商品</a>
                    </p>
                </li>
            </ul>
        </div>
    </div>
    <!--底部-->
    <div class="bar-wrapper">
        <div class="bar-right">
            <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
            <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
            <div class="calBtn">
                <a href="javascript:;">结算</a>
            </div>
        </div>
    </div>
</section>
<section class="model_bg"></section>
<section class="my_model">
    <p class="title">删除宝贝<span class="closeModel">X</span></p>
    <p>您确认要删除该宝贝吗？</p>
    <div class="opBtn">
        <a href="javascript:;" class="dialog-sure">确定</a>
        <a href="javascript:;" class="dialog-close">关闭</a>
    </div>
</section>
<script src="/js/vendor/jquery-3.2.1.min.js"></script>
<script src="/js/carts.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/plugins.js"></script>
<script src="/js/active.js"></script>
</body>

</html>