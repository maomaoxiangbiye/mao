<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'positionInfoUser.jsp' starting page</title>
    
<!--		<link rel="icon" type="image/png" href="images/favicon.png">-->
<!--		<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">-->
<!--		<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">-->
		<link rel="stylesheet" href="css/animate.min.css">
		<link rel="stylesheet" href="css/templatemo-style.css">
<!--		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>-->
		<link rel="STYLESHEET" type="text/css" href="<%=basePath%>css/page/distributionChartsMain.css"/>   	
  </head>
  
  <body data-spy="scroll" data-target=".navbar-collapse">
	   <div class="col-xs-12 progressRate colorSet">
			<div id="gridPreDiv"  class="space-6"></div>
			<table id="gridBox"></table>
			<div id="gridBoxPage"></div>
	   </div>
	

		<!-- start home -->
<!--		<section id="home" class="text-center">-->
<!--		  <div class="templatemo_headerimage">-->
<!--		    <div class="flexslider">-->
<!--		      <ul class="slides">-->
<!--		        <li>-->
<!--		        	<img src="images/slider/1.jpg" alt="Slide 1">-->
<!--		        	<div class="slider-caption">-->
<!--					    <div class="templatemo_homewrapper">-->
<!--					      <h1 class="wow fadeInDown" data-wow-delay="2000">hello, this is web &AMP; mobile studio</h1>-->
<!--					      <h2 class="wow fadeInDown" data-wow-delay="2000">-->
<!--							<span class="rotate">fully responsive business one page, clean design and easy to customize</span>-->
<!--						</h2>-->
<!--						<p>it is built on html5, css3, bootstrap, and much more!</p>-->
<!--						<a href="#work" class="smoothScroll btn btn-default wow fadeInDown" data-wow-delay="2000">Our Work</a>	-->
<!--					    </div>-->
<!--				  	</div>-->
<!--		        </li>-->
<!--		        <li>-->
<!--		        	<img src="images/slider/2.jpg" alt="Slide 2">-->
<!--		        	<div class="slider-caption">-->
<!--					    <div class="templatemo_homewrapper">-->
<!--					      <h1 class="wow fadeInDown" data-wow-delay="2000">Flex Slider, CSS Flexbox</h1>-->
<!--					      <h2 class="wow fadeInDown" data-wow-delay="2000">-->
<!--							<span class="rotate">work on all modern browsers, Works on IE 10+</span>-->
<!--						</h2>-->
<!--						<p>see caniuse.com for browser compatibility information</p>-->
<!--						<a href="#about" class="smoothScroll btn btn-default wow fadeInDown" data-wow-delay="2000">See about us</a>	-->
<!--					    </div>-->
<!--				  	</div>-->
<!--		        </li>-->
<!--		        <li>-->
<!--		        	<img src="images/slider/3.jpg" alt="Slide 3">-->
<!--		        	<div class="slider-caption">-->
<!--					    <div class="templatemo_homewrapper">-->
<!--					      <h1 class="wow fadeInDown" data-wow-delay="2000">Special Thanks</h1>-->
<!--					      <h2 class="wow fadeInDown" data-wow-delay="2000">-->
<!--							<span class="rotate">unsplash.com, flexslider, bootstrap, jquery</span>-->
<!--						</h2>-->
<!--						<p>Feel free to look around and customize to suit your needs.</p>-->
<!--						<a href="#service" class="smoothScroll btn btn-default wow fadeInDown" data-wow-delay="2000">Our Services</a>	-->
<!--					    </div>-->
<!--				  	</div>-->
<!--		        </li>-->
<!--		      </ul>-->
<!--		    </div>-->
<!--		  </div>				-->
<!--		</section>-->
		<!-- end home -->
		<!-- start about -->
<!--		<section id="about">-->
<!--			<div class="container">-->
<!--				<div class="row">-->
<!--					<div class="col-sm-6 col-md-7 wow fadeInLeft" data-wow-delay="2000">-->
<!--						<h3>Welcome to CRYSTAL Design</h3>-->
<!--						<h2>Digital Studio in Bangkok</h2>-->
<!--						<p>Crystal is free web template for everyone. Feel free to use it for your website. Please spread a word about <span -->
<!---->
<!--class="blue">template</span><span class="green">mo</span> to your friends. Integer lorem magna, gravida vitae metus a, euismod faucibus nisi. In sed nulla magna. Nulla -->
<!---->
<!--in mauris ullamcorper, cursus lorem lobortis, pellentesque enim. Ut vel pellentesque est. Maecenas sed malesuada tellus.</p>-->
<!--					</div>-->
<!--					<div class="col-sm-6 col-md-5 wow fadeInRight" data-wow-delay="2000">-->
<!--						<h3>Our Location</h3>-->
<!--						<div class="col-md-6 col-sm-6 col-xs-6">-->
<!--							<img src="images/company-img-1.jpg" class="img-responsive" alt="company 1">-->
<!--						</div>-->
<!--						<div class="col-md-6 col-sm-6 col-xs-6">-->
<!--							<img src="images/company-img-2.jpg" class="img-responsive" alt="company 2">-->
<!--						</div>-->
<!--						<div class="col-md-6 col-sm-6 col-xs-6">-->
<!--							<img src="images/company-img-3.jpg" class="img-responsive" alt="company 3">-->
<!--						</div>-->
<!--						<div class="col-md-6 col-sm-6 col-xs-6">-->
<!--							<img src="images/company-img-4.jpg" class="img-responsive" alt="company 4">-->
<!--						</div>-->
<!--					</div>-->
<!--				</div>-->
<!--			</div>-->
<!--		</section>-->
		<!-- end about -->
		<!-- start team -->
		<section id="team" class="text-center">
			<div class="container">
				<div class="row">
					<div class="col-md-12 wow fadeInDown" data-wow-delay="900">
						<h3>行业优秀企业</h3>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<p>高渊——市场：高远于品质，精品：渊在于科技。</p>
					</div>
					<div class="col-md-2"></div>
					<div class="col-sm-6 col-md-3 wow fadeInLet" data-wow-delay="2000">
						<div class="team_thumb">
							<img src="images/team-img-1.jpg" class="img-responsive" alt="team">
								<div class="team_overlay">
									<ul class="social_icon">
										<li><a href="#" class="fa fa-facebook"></a></li>
									</ul>								
								</div>
						</div>
						<div class="team_description">
							<h4>汉丽轩</h4>
							<h5>广告装饰</h5>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 wow fadeInUp" data-wow-delay="2000">
						<div class="team_thumb">
							<img src="images/team-img-2.jpg" class="img-responsive" alt="team">
								<div class="team_overlay">
									<ul class="social_icon">
										<li><a href="#" class="fa fa-facebook"></a></li>
									</ul>
								</div>
						</div>
						<div class="team_description">
							<h4>金夫人</h4>
							<h5>婚纱摄影</h5>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 wow fadeInUp" data-wow-delay="2000">
						<div class="team_thumb">
							<img src="images/team-img-3.jpg" class="img-responsive" alt="team">
								<div class="team_overlay">
									<ul class="social_icon">
										<li><a href="#" class="fa fa-facebook"></a></li>
									</ul>
								</div>
						</div>
						<div class="team_description">
							<h4>融尚国际</h4>
							<h5>详情</h5>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 wow fadeInRight" data-wow-delay="2000">
						<div class="team_thumb">
							<img src="images/team-img-4.jpg" class="img-responsive" alt="team">
								<div class="team_overlay">
									<ul class="social_icon">
										<li><a href="#" class="fa fa-facebook"></a></li>
									</ul>
								</div>
						</div>
						<div class="team_description">
							<h4>未来设计</h4>
							<h5>详情</h5>
						</div>
					</div>
							
				</div>
			</div>
		</section>
		<!-- end team -->
		<!-- start work -->
		<section id="work" class="text-center">
			<div class="container">
				<div class="row">
					<div class="col-md-12 wow fadeInDown" data-wow-delay="2000">
						<h3>知名企业</h3>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<p>真正的财富不在于拥有多少亿的资产，而是取决于创造了多少社会尊重，解决了多少就业与困难。</p>
					</div>
					<div class="col-md-2"></div>
					<div class="col-sm-6 col-md-4 wow fadeInLeft" style="height:200px" data-wow-delay="2000">
						<div class="work_thumb">
							<img src="images/work-img-1.jpg" class="img-responsive" alt="work">
								<div class="work_overlay">
									<a href="#"><i class="fa fa-thumbs-o-up"></i></a>
								</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 wow fadeInDown" style="height:200px" data-wow-delay="2000">
						<div class="work_thumb">
							<img src="images/work-img-2.jpg" class="img-responsive" alt="work">
								<div class="work_overlay">
									<a href="#"><i class="fa fa-thumbs-o-up"></i></a>
								</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 wow fadeInRight" style="height:200px" data-wow-delay="2000">
						<div class="work_thumb">
							<img src="images/work-img-3.jpg" class="img-responsive" alt="work">
								<div class="work_overlay">
									<a href="#"><i class="fa fa-thumbs-o-up"></i></a>
								</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 wow fadeInLeft" data-wow-delay="2000">
						<div class="work_thumb">
							<img src="images/work-img-4.jpg" class="img-responsive" alt="work">
								<div class="work_overlay">
									<a href="#"><i class="fa fa-thumbs-o-up"></i></a>
								</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 wow fadeInUp" data-wow-delay="2000">
						<div class="work_thumb">
							<img src="images/work-img-5.jpg" class="img-responsive" alt="work">
								<div class="work_overlay">
									<a href="#"><i class="fa fa-thumbs-o-up"></i></a>
								</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 wow fadeInRight" data-wow-delay="2000">
						<div class="work_thumb">
							<img src="images/work-img-6.jpg" class="img-responsive" alt="work">
								<div class="work_overlay">
									<a href="#"><i class="fa fa-thumbs-o-up"></i></a>
								</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- end work -->
		<!-- start javascript -->
<!--		<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>-->
<!--		<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>-->
		<script src="js/jquery.simple-text-rotator.js"></script>
		<script src="js/smoothscroll.js"></script>
		<script src="js/wow.min.js"></script>
		<script src="js/jquery.flexslider.js"></script>
		<script src="js/templatemo-script.js"></script>
		<script src="js/user/positionInfoUser1.js"></script>
    	<script type="text/javascript" src="js/util/modal-util.js"></script> 		
		<!-- end javascript -->
  </body>
</html>
