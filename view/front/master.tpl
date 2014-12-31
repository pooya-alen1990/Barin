{load_presentation_object filename='master' assign='obj'}
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>برین کارت</title>
    <link rel="stylesheet" type="text/css" href="http://localhost/barin/view/front/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost/barin/view/front/css/custom.css">
    <link rel="stylesheet" type="text/css" href="http://localhost/barin/view/front/css/slider.css">
    <link rel="stylesheet" type="text/css" href="http://localhost/barin/view/front/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost/barin/view/front/css/jquery.countdown.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="navbar-top navbar-fixed-top">
        <div class="col-xs-7 col-md-6 pull-right town-choose">
            <ul class="nav navbar-nav navbar-right town-choose">
            	<li class="pull-right"><a></a></li>
                <li class="pull-right dropdown active">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-caret-down"></i> استان {$obj->persian_name} <i class="fa fa-map-marker"></i></a>
                    <ul class="dropdown-menu col-md-3" role="menu">
                    {section name=i loop=$obj->city}
                        <li><a href="http://localhost/barin/{$obj->city[i].latin_name}/">( {$obj->array[i].count} ) {$obj->city[i].persian_name}</a></li>
                    {/section}
                    </ul>
                </li>
                <li class="pull-right hidden-xs"><a href="http://localhost/barin/user/centers/">مراکز طرف قرارداد <i class="fa fa-home"></i></a></li>
                <li class="pull-right hidden-xs"><a href="http://localhost/barin/user/contact/">تماس با ما <i class="fa fa-envelope"></i></a></li>
                
            </ul>
        </div>
        <div class="col-md-6 col-xs-5 search">
        	<ul class="nav navbar-nav pull-right visible-lg"><li class="active"><a href="callto:09123456789"><i class="fa fa-phone"></i>09123456789</a></li></ul>
            <div class="input-group">
                <input type="text" class="form-control" dir="rtl" placeholder="جستجو...">
                <span class="input-group-btn">
                    <button class="btn btn-info" type="button"><i class="fa fa-search"></i></button>
                </span>
            </div><!-- /input-group -->
        </div>
    </div>
    <header class="container-fluid header-top" style="{$obj->style}">
        <div class="col-md-2 col-xs-6 member pull-right text-right hidden-xs">
            <a href="http://localhost/barin/user/login/">ورود کاربر<span class="fa fa-sign-in"></span></a>
            <a href="http://localhost/barin/user/signup/">ثبت نام کنید<span class="fa fa-user"></span></a>
        </div>
        <div class="member-xs visible-xs pull-right text-right">
            <a href="#"><i class="fa fa-sign-in"></i></a>
            <a href="#"><i class="fa fa-user"></i></a>
        </div>

        <div class="col-md-3 col-sm-4 col-xs-6"><a class="brand" href="?main"><img class="img-responsive" src="http://localhost/barin/view/front/images/logo.png"></a></div>
        <div class="clearfix"></div>

    </header>
    <div class="clearfix"></div>
    <nav class="navbar navbar-default" role="navigation">
        <div class=" social-network text-right">
            <a href="#" class="social-s rss"></a>
            <a href="#" class="social-s pdf"></a>
        </div>
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav navbar-right">
                    <li class="pull-right active"><a href="?page=main">صفحه اصلی <i class="fa fa-home"></i></a></li>
                    <li class="pull-right "><a href="#">خدمات رفاهی <i class="fa fa-cutlery"></i></a></li>
                    <li class="pull-right "><a href="#">خدمات پزشکی <i class="fa fa-plus-square"></i></a></li>
                    <li class="pull-right "><a href="#">خدمات خرید کالا <i class="fa fa-shopping-cart"></i></a></li>
                    <li class="pull-right "><a href="#">سفارش برین کارت <i class="fa fa-credit-card"></i></a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    
 {if isset($obj->top)}   
	{include file={$obj->top}} 
 {/if}   
    
    <div class="clearfix"></div>
    <hr>
    <section class="side-bar col-sm-3 hidden-xs text-center">
        <div class="panel panel-primary text-center">
            <div class="panel-heading">نماد اعتماد ملی الکترونیک</div>
            <div class="panel-body">
                <img src="http://localhost/barin/view/front/images/namad1.png">
            </div>
        </div>

        <div class="advertise"><a href="#"><img src="http://localhost/barin/view/front/images/advertise.gif"> </a></div>
        <div class="advertise"><a href="http://rayweb.ir"><img src="http://localhost/barin/view/front/images/rayweb.gif"> </a></div>
        <div class="advertise"><a href="#"><img src="http://localhost/barin/view/front/images/advertise.gif"> </a></div>
        <div class="advertise"><a href="http://rayweb.ir"><img src="http://localhost/barin/view/front/images/rayweb.gif"> </a></div>
        <div class="advertise"><a href="#"><img src="http://localhost/barin/view/front/images/advertise.gif"> </a></div>
        <div class="advertise"><a href="http://rayweb.ir"><img src="http://localhost/barin/view/front/images/rayweb.gif"> </a></div>
        <div class="advertise"><a href="#"><img src="http://localhost/barin/view/front/images/advertise.gif"> </a></div>
        <div class="advertise"><a href="http://rayweb.ir"><img src="http://localhost/barin/view/front/images/rayweb.gif"> </a></div>
    </section>
    <section class="main-content col-sm-9">
    
    
 {include file={$obj->page}}

    </section>
    <div class="clearfix"></div>
    <hr>
    <footer>
        <div class="footer-top">
            <div class="col-md-4 text-center">
                <h1>ارتباط با ما</h1>
                <hr>
                <ul class="list-unstyled text-right" dir="rtl">
                    <li><i class="fa fa-phone"></i> تلفن : 88759591 (5 خط)</li>
                    <li><i class="fa fa-phone-square"></i> خط ویژه : 88507922</li>
                    <li><i class="fa fa-taxi"></i> آدرس : خیابان شهید بهشتی ، بعد از خیابان میر عماد ، پلاک 294 ، طبقه پنجم ، واحد 501 </li>
                </ul>
            </div>
            <div class="col-md-4 text-center">
                <h1>درباره برین</h1>
                <hr>
                <ul class="list-unstyled">
                    <li><a href="#">برین کارت چیست؟</a> </li>
                    <li><a href="#">تماس با ما</a> </li>
                    <li><a href="#">شرایط اخذ نمایندگی</a> </li>
                    <li><a href="#">دانلود لیست کامل مراکز</a> </li>
                    <li><a href="#">برین در جراید</a> </li>
                </ul>
            </div>
            <div class="col-md-4 text-center">
                <h1>شبکه های اجتماعی</h1>
                <hr>
                <ul class="list-unstyled social-network" style="border-right: none">
                    <li><a href="#" class="social facebook"></a></li>
                    <li><a href="#" class="social twitter"></a></li>
                    <li><a href="#" class="social google-plus"></a></li>
                    <li><a href="#" class="social cloob"></a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
            <hr>
            <div class="col-md-4 text-center">
            	<h2>نرم افزار موبایل برین کارت</h2>
            	<div class="btn-group"><a href="#" class="btn btn-app btn-lg">اندروید</a><a href="#" class="btn btn-lg btn-app"><i class="fa fa-android"></i></a></div>
                <div class="btn-group"><a href="#" class="btn btn-app btn-lg">آیفون</a><a href="#" class="btn btn-lg btn-app"><i class="fa fa-apple"></i></a></div>
            </div>
            <div class="col-md-4 text-center">
            	<h2>یگانه نوآوران پویا</h2>
            	<a href="?page=main"><img src="http://localhost/barin/view/front/images/logo-white.png"></a>
            </div>
            <div class="col-md-4 text-center" dir="rtl">
            	<h2>عضویت در خبرنامه</h2>
            	<form class="form-inline">
                	<input type="email" class="form-control" placeholder="ایمیل خود را وارد کنید"><input type="submit" class="btn btn-success" value="ثبت">
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
        <div class="footer-bottom">
            <p dir="rtl">کلیه حقوق مادی و معنوی این سایت متعلق به مجموعه یگانه نوآوران پویا می باشد.</p>
            طراحی: <a href="http://rayweb.ir"> رای وب </a>
        </div>
    </footer>

<script src="http://localhost/barin/view/front/js/jquery.js"></script>
<script src="http://localhost/barin/view/front/js/jssor.js"></script>
<script src="http://localhost/barin/view/front/js/jssor.slider.min.js"></script>
<script src="http://localhost/barin/view/front/js/slider.js"></script>
<script src="http://localhost/barin/view/front/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://localhost/barin/view/front/js/jquery.plugin.js"></script>
<script type="text/javascript" src="http://localhost/barin/view/front/js/jquery.countdown.js"></script>
<script src="http://localhost/barin/view/front/js/custom.js"></script>
</body>
</html>