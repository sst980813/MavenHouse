<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<html lang="zxx">
<head>
<base href="<%=basePath%>">
<!-- End Google Tag Manager -->
<title>Home</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<!-- External CSS libraries -->
<link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="assets/css/magnific-popup.css">
<link type="text/css" rel="stylesheet" href="assets/css/slick.css">
<link type="text/css" rel="stylesheet" href="assets/css/animate.min.css">
<link type="text/css" rel="stylesheet" href="assets/fonts/font-awesome/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">

<!-- Google fonts -->
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,300,700">

<!-- Custom Stylesheet -->
<link type="text/css" rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" type="text/css" id="style_sheet" href="assets/css/skins/default.css">

</head>
<body id="top">

<!-- End Google Tag Manager (noscript) -->
<div class="page_loader"></div>

<!-- main header start -->
<header class="main-header sticky-header header-with-top" id="main-header-2">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-lg navbar-light rounded">
                    <a class="navbar-brand logo navbar-brand d-flex mr-auto" href="index.html">
                        <img src="assets/img/logos/black-logo.png" alt="logo">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="fa fa-bars"></span>
                    </button>
                    <div class="navbar-collapse collapse w-100" id="navbar">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link single" href="new_file2.html">租房</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link single" href="#featured-property">商铺</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link single" href="#agents">写字楼</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link single" href="#gallery">代理人</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link single" href="my.jsp?userName=${userName}&appID=${appID}">${userName}</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- main header end -->

<!-- Banner start -->
<div class="banner" id="banner">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active item-bg banner-max-height">
                <img class="d-block w-100 h-100" src="assets/img/banner/img-1.jpg" alt="banner">
                <div class="carousel-caption banner-slider-inner d-flex h-100">
                    <div class="carousel-content">
                                <div class="text-l">
                                    <h1>&nbsp;&nbsp;连接每个家的故事</h1>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lando和您一起找到最好的居住环境</p>
                                    <div class="contact-from">
                                    <form action="#" method="GET" enctype="multipart/form-data" >
                                    	<h3>&nbsp;&nbsp;&nbsp;租房</h3>
                                        <div class="form-group name">
                                            <input type="text" name="name" class="form-control" placeholder="请输入区域、商圈或小区名开始找房">
                                        </div>
                                        <div class="send-btn text-center">
                                            <button type="submit" class="btn btn-color btn-md btn-block">search</button>
                                        </div>
                                    </form>
                                    </div>
                                </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- banner end -->

<!-- Featured property start -->
<div class="featured-property content-area content-area" id="featured-property">
    <div class="container">
        <div class="main-title wow_ fadeInDown delay-04s">
            <h1>精选好房</h1>
            <p>以下为Lando为您推荐的精选房产</p>
        </div>
        <div class="slick-slider-area">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 3, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                <div class="slick-slide-item">
                    <div class="property-box">
                        <div class="photo">
                            <a href="#">
                                <img src="assets/img/property-1.jpg" alt="property" class="img-fluid">
                                <div class="love"><i class="flaticon-heart"></i></div>
                                <div class="plan-price"><sup>￥</sup>2600<span>/month</span> </div>
                            </a>
                        </div>
                        <div class="detail clearfix">
                            <div class="float-left">
                                <h3>
                                    <a href="#">Modern Family Home</a>
                                </h3>
                                <div class="location">
                                    <a href="#">
                                        <i class="flaticon-pin"></i> 123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="property-box">
                        <div class="photo">
                            <a href="#">
                                <img src="assets/img/property-2.jpg" alt="property" class="img-fluid">
                                <div class="tag">For Rent</div>
                                <div class="love"><i class="flaticon-heart"></i></div>
                                <div class="plan-price"><sup>￥</sup>750<span>/month</span> </div>
                            </a>
                        </div>
                        <div class="detail clearfix">
                            <div class="float-left">
                                <h3>
                                    <a href="#">Relaxing Apartment</a>
                                </h3>
                                <div class="location">
                                    <a href="#">
                                        <i class="flaticon-pin"></i> 123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="property-box">
                        <div class="photo">
                            <a href="#">
                                <img src="assets/img/property-3.jpg" alt="property" class="img-fluid">
                                <div class="tag">For Sale</div>
                                <div class="love"><i class="flaticon-heart"></i></div>
                                <div class="plan-price"><sup>￥</sup>800<span>/month</span> </div>
                            </a>
                        </div>
                        <div class="detail clearfix">
                            <div class="float-left">
                                <h3>
                                    <a href="#">Real Luxury Villa</a>
                                </h3>
                                <div class="location">
                                    <a href="#">
                                        <i class="flaticon-pin"></i> 123 Kathal St. Tampa City
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slick-prev slick-arrow-buton clip-home">
                <i class="fa fa-angle-left"></i>
            </div>
            <div class="slick-next slick-arrow-buton clip-home">
                <i class="fa fa-angle-right"></i>
            </div>
        </div>
    </div>
</div>
<!-- Featured property end -->

<!-- Agents section start -->
<div class="agents content-area bg-grea" id="agents">
    <div class="container">
        <div class="main-title wow_ fadeInDown delay-04s">
            <h1>优秀代理人</h1>
            <p>帮您找到合适的房子</p>
        </div>
        <div class="slick-slider-area">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 4, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                <div class="slick-slide-item">
                    <div class="agent">
                        <div class="photo">
                            <a href="#">
                                <img src="assets/img/avatar/avatar-6.jpg" alt="avatar" class="img-fluid">
                            </a>
                            
                        </div>
                        <div class="details">
                            <h5><a href="#">Martin Smith</a></h5>
                            <p>Web Developer</p>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="agent">
                        <div class="photo">
                            <a href="#">
                                <img src="assets/img/avatar/avatar-5.jpg" alt="avatar" class="img-fluid">
                            </a>
                            
                        </div>
                        <div class="details">
                            <h5><a href="#">Office Manager</a></h5>
                            <p>Support Manager</p>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="agent">
                        <div class="photo">
                            <a href="#">
                                <img src="assets/img/avatar/avatar-3.jpg" alt="avatar" class="img-fluid">
                            </a>
                            
                        </div>
                        <div class="details">
                            <h5><a href="#">John Antony</a></h5>
                            <p>Creative Director</p>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="agent">
                        <div class="photo">
                            <a href="#">
                                <img src="assets/img/avatar/avatar-4.jpg" alt="avatar" class="img-fluid">
                            </a>
                            
                        </div>
                        <div class="details">
                            <h5><a href="#">Jonny Miche</a></h5>
                            <p>Office Manager</p>
                        </div>
                    </div>
                </div>
                <div class="slick-slide-item">
                    <div class="agent">
                        <div class="photo">
                            <a href="#">
                                <img src="assets/img/avatar/avatar-5.jpg" alt="avatar" class="img-fluid">
                            </a>
           
                        </div>
                        <div class="details">
                            <h5><a href="#">Office Manager</a></h5>
                            <p>Support Manager</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slick-prev slick-arrow-buton clip-home">
                <i class="fa fa-angle-left"></i>
            </div>
            <div class="slick-next slick-arrow-buton clip-home">
                <i class="fa fa-angle-right"></i>
            </div>
        </div>
    </div>
</div>
<!-- Agents section end -->

<!-- Reviews start -->
<div class="reviews" id="reviews">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 wow_ fadeInDown delay-04s">
                <div class="testimonial-inner">
                    <div class="main-title">
                        <h1>租客评论</h1>
                        <p>很荣幸为您服务 期待您的评论</p>
                    </div>
                    <div id="carouselExampleIndicators3" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators3" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators3" data-slide-to="1" class=""></li>
                            <li data-target="#carouselExampleIndicators3" data-slide-to="2" class=""></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <div class="testimonial-info">
                                            <div class="sz">
                                                <p>
                                                                                                                                     找到了新意的店面真的太开心了。附近的客流量大，业绩也逐步提神，感谢Lando。
                                                </p>
                                            </div>
                                            <div class="media mb-4">
                                                <a class="pr-3" href="#">
                                                    <img src="assets/img/avatar/avatar.jpg" alt="avator" class="img-fluid">
                                                </a>
                                                <div class="media-body align-self-center">
                                                    <h5>
                                                        <a href="#">安先生</a>
                                                    </h5>
                                                    <h6>餐厅老板</h6>
                           </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 d-none-768">
                                        <div class="testimonial-info">
                                            <div class="sz">
                                                <p>
                                                                                                                                      刚毕业，找到合适的房子太难了。太贵的租不起，便宜的又嫌环境不好。在Lando找到了合适的房子，真棒。
                                                </p>
                                            </div>
                                            <div class="media mb-4">
                                                <a class="pr-3" href="#">
                                                    <img src="assets/img/avatar/avatar-2.jpg" alt="avator" class="img-fluid">
                                                </a>
                                                <div class="media-body align-self-center">
                                                    <h5>
                                                        <a href="#">邵小姐</a>
                                                    </h5>
                                                    <h6>应届毕业生</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <div class="testimonial-info">
                                            <div class="sz">
                                                <p>
                                                    工作了两年，想换一个好点的房子租，Lando上的房源很齐，找到了合适的房子。
                                                </p>
                                            </div>
                                            <div class="media mb-4">
                                                <a class="pr-3" href="#">
                                                    <img src="assets/img/avatar/avatar-2.jpg" alt="avator" class="img-fluid">
                                                </a>
                                                <div class="media-body align-self-center">
                                                    <h5>
                                                        <a href="#">陈小姐</a>
                                                    </h5>
                                                    <h6>公司HR</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 d-none-768">
                                        <div class="testimonial-info">
                                            <div class="sz">
                                                <p>
                                                                                                                               找到合适的房子太难了。太贵的租不起，便宜的又嫌环境不好。在Lando找到了合适的房子，真棒。
                                                </p>
                                            </div>
                                            <div class="media mb-4">
                                                <a class="pr-3" href="#">
                                                    <img src="assets/img/avatar/avatar.jpg" alt="avator" class="img-fluid">
                                                </a>
                                                <div class="media-body align-self-center">
                                                    <h5>
                                                        <a href="#">吴先生</a>
                                                    </h5>
                                                    <h6>IT工作者</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <div class="testimonial-info">
                                            <div class="sz">
                                                <p>
                                                   刚毕业，找到合适的房子太难了。太贵的租不起，便宜的又嫌环境不好。在Lando找到了合适的房子，真棒。
                                                </p>
                                            </div>
                                            <div class="media mb-4">
                                                <a class="pr-3" href="#">
                                                    <img src="assets/img/avatar/avatar.jpg" alt="avator" class="img-fluid">
                                                </a>
                                                <div class="media-body align-self-center">
                                                    <h5>
                                                        <a href="#">张先生</a>
                                                    </h5>
                                                    <h6>职场小白</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12 d-none-768">
                                        <div class="testimonial-info">
                                            <div class="sz">
                                                <p>
                                                    工作了两年，想换一个好点的房子租，Lando上的房源很齐，找到了合适的房子。
                                                </p>
                                            </div>
                                            <div class="media mb-4">
                                                <a class="pr-3" href="#">
                                                    <img src="assets/img/avatar/avatar-2.jpg" alt="avator" class="img-fluid">
                                                </a>
                                                <div class="media-body align-self-center">
                                                    <h5>
                                                        <a href="#">刘小姐</a>
                                                    </h5>
                                                    <h6>白领</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Reviews end -->

<!-- Partners start -->
<div class="partners bg-grea">
    <div class="container">
        <div class="row">
            <div class="multi-carousel" data-items="1,3,5,6" data-slide="1" id="multiCarousel"  data-interval="1000">
                <div class="multi-carousel-inner">
                    <div class="item">
                        <div class="pad15">
                            <img src="assets/img/brands/brand-1.png" alt="brand" class="img-fluid">
                        </div>
                    </div>
                    <div class="item">
                        <div class="pad15">
                            <img src="assets/img/brands/brand-2.png" alt="brand" class="img-fluid">
                        </div>
                    </div>
                    <div class="item">
                        <div class="pad15">
                            <img src="assets/img/brands/brand-3.png" alt="brand" class="img-fluid">
                        </div>
                    </div>
                    <div class="item">
                        <div class="pad15">
                            <img src="assets/img/brands/brand-4.png" alt="brand" class="img-fluid">
                        </div>
                    </div>
                    <div class="item">
                        <div class="pad15">
                            <img src="assets/img/brands/brand-5.png" alt="brand" class="img-fluid">
                        </div>
                    </div>
                    <div class="item">
                        <div class="pad15">
                            <img src="assets/img/brands/brand-1.png" alt="brand" class="img-fluid">
                        </div>
                    </div>
                    <div class="item">
                        <div class="pad15">
                            <img src="assets/img/brands/brand-2.png" alt="brand" class="img-fluid">
                        </div>
                    </div>
                    <div class="item">
                        <div class="pad15">
                            <img src="assets/img/brands/brand-3.png" alt="brand" class="img-fluid">
                        </div>
                    </div>
                    <div class="item">
                        <div class="pad15">
                            <img src="assets/img/brands/brand-4.png" alt="brand" class="img-fluid">
                        </div>
                    </div>
                    <div class="item">
                        <div class="pad15">
                            <img src="assets/img/brands/brand-5.png" alt="brand" class="img-fluid">
                        </div>
                    </div>
                </div>
                <a class="multi-carousel-indicator leftLst" aria-hidden="true">
                    <i class="fa fa-angle-left"></i>
                </a>
                <a class="multi-carousel-indicator rightLst" aria-hidden="true">
                    <i class="fa fa-angle-right"></i>
                </a>
            </div>
        </div>
    </div>
</div>
<!-- Partners end -->

<!-- Contact start -->
<div class="contact content-area-2" id="contact">
    <div class="container">
        <div class="main-title wow_ fadeInDown delay-04s">
            <h1>联系我们</h1>
            <p>请提出宝贵意见方便我们改进</p>
        </div>
        <div class="row">
            <div class="col-lg-7 wow_ fadeInLeft delay-04s">
                <form action="#" method="GET" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group name">
                                <input type="text" name="name" class="form-control" placeholder="姓名">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group email">
                                <input type="email" name="email" class="form-control" placeholder="邮件">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group subject">
                                <input type="text" name="subject" class="form-control" placeholder="主题">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group number">
                                <input type="text" name="phone" class="form-control" placeholder="电话">
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group message">
                                <textarea class="form-control" name="message" placeholder="建议"></textarea>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="send-btn text-center">
                                <button type="submit" class="btn btn-color btn-md btn-message">发送</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-5 wow_ fadeInRight delay-04s">
                <div class="contact-info">
                    <div class="media mb-25">
                        <div class="media-body">
                            <h5>电话:</h5>
                            <p><a href="tel:0477-0477-8556-552">0477 8556 552</a></p>
                        </div>
                    </div>
                    <div class="media mb-25">
                   
                        <div class="media-body">
                            <h5>邮箱:</h5>
                            <p><a href="#">info@themevessel.com</a></p>
                        </div>
                    </div>
                    <div class="media mb-25">
                        
                        <div class="media-body">
                            <h5>网站:</h5>
                            <p><a href="#">info@themevessel.com</a></p>
                        </div>
                    </div>
                    <div class="media mb-0">
                        
                        <div class="media-body">
                            <h5>传真:</h5>
                            <p><a href="#">0477 8556 552</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Contact end -->

<!-- Footer start -->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <p>Copyright &copy; 2020.Company name Shao. reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
            </div>
        </div>
    </div>
</div>
<!-- Footer end -->

<!-- External JS libraries -->
<script src="assets/js/jquery-2.2.0.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/slick.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/jquery.filterizr.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/jquery.scrollUp.js"></script>
<script src="assets/js/particles.min.js"></script>
<script src="assets/js/typed.min.js"></script>
<script src="assets/js/ie-emulation-modes-warning.js"></script>
<!-- Custom JS Script -->
<script  src="assets/js/app.js"></script>
</body>
</html>
