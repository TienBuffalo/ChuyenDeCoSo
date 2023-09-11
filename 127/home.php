
<!DOCTYPE html>
<html>
<head>
	<title>127 Math</title>
	<link href="https://fonts.googleapis.com/css?family=Aleo" rel="stylesheet">

	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">
	<!----magnific popup css file for work section -->
	<link rel="stylesheet" type="text/css" href="css/magnific-popup.css">

	<!----owlcarousel css file for our team section -->
	<link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css" href="css/owl.theme.default.min.css">


	<!----Linking google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">

	<!----font-awsome start-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<!----font-awsome ends-->

		<!----css file link-->
	<link rel="stylesheet" type="text/css" href="css/style.css">

	   <!----favicon setting-->
	<link rel="shortcut icon" type="text/css" href="img/mylogo.png">

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!----magnific popup js file for work section -->
	<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>

	<!----owlcarousel js file for our team section -->
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<!----------email notification-------->

	<style type="text/css">
	
	.servicebody
	{
		

	}
	html
	{
		scroll-behavior: smooth;
	}
	</style>

</head>
<body onload="myfunction()">
		   <!---preloader starts	----->

		   <div id="loading"></div>

		   <!---preloader Ends	----->


			<!---Navigation Starts	----->

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<!------Responsive Button---->

				<h1 style="color: white;margin-top: 10px;" id="myhead">127 Math</h1>
			</div>
			<div class="collapse navbar-collapse" id="navi">
                 <!------Navigation menus starts---->
				<ul class="nav navbar-nav navbar-right">
					<li> <a href="">Trang Chủ</a></li>
					<li> <a href="#myservice_section">KHÓA HỌC</a></li>
					<li> <a href="#work">HOẠT ĐỘNG</a></li>
					<li> <a href="#myfaq">HỖ TRỢ</a></li>
					<li> <a href="login.php" id="our-location" class="btn-success" >Đăng nhập</a></li>
				</ul>
	                 <!------Navigation menus ends---->
			</div>
		</div>
	</nav>
			<!---Navigation Ends	----->

			<!---Slider Section starts	------->
			<section class="slider text-center" id= "slider">
				<div class="slider-overlay">
					<div class="slider-content">
						<div class="icons">
							<i class="fa fa-apple"></i>
							<i class="fa fa-android"></i>
							<i class="fa fa-windows"></i>
						</div>
						<br>
						<div class="text">
							
						</div> <!-- jquery typed effect -->
							<div class="cta-div">
								<a href="#myfaq" class="btn1">LIÊN HỆ VỚI CHÚNG TÔI</a>
								<a href="#myservice_section" class="btn2">HỌC NGAY HÔM NAY</a>
							</div>
							<br><br>
							<div class="social-networks">
								<a href="" class="fa fa-facebook"></a>
								<a href="" class="fa fa-twitter"></a>
								<a href="" class="fa fa-instagram"></a>
								<a href="" class="fa fa-reddit"></a>
								<a href="" class="fa fa-linkedin"></a>
								<a href="" class="fa fa-cog"></a>
							</div>
					</div>
				</div>
			</section>

			<!---Slider Section ends------->

        	<!---Our Services Section Start------->

         <br><br>
         <div class="container-fluid servicebody" id="myservice_section">
         <div class="service-are" id="service">
         	<div class="row">
         		<div class="col-xs-12">
         			<div class="section-title text-center">
         				<h2><b>KHÓA HỌC</b></h2>
         			</div>
         		</div>
         	</div>
         	<div class="row">
         		<div class="col-md-4 col-sm-6 col-xs-12">
         			<div class="service-wrap text-center">
         				<div class="service-icon">
         					<i class="fa fa-leaf"></i>
         				</div>
         				<h3><a href="login.php">CHƯƠNG TRÌNH HỌC</a></h3>
         				<p>
						 Ở đây bạn sẽ tìm thấy tất cả các hướng dẫn bài giảng liên quan đến toán trung học như toán 6,7,8,...
         				</p>
         			</div>
         		</div>

         		<div class="col-md-4 col-sm-6 col-xs-12">
         			<div class="service-wrap text-center">
         				<div class="service-icon">
         					<i class="fa fa-laptop"></i>
         				</div>
         				<h3><a href="login.php">VIDEO BÀI GIẢNG</a></h3>
         				<p>
						 Ở đây bạn sẽ tìm thấy tất cả các video hướng dẫn liên quan đến toán trung học như toán 6,7,8,...
         				</p>
         			</div>
         		</div>

         		<div class="col-md-4 col-sm-6 col-xs-12">
         			<div class="service-wrap text-center" style="padding-bottom: 5px;">
         				<div class="service-icon">
         					<i class="fa fa-laptop"></i>
         				</div>
         				<h3><a href="login.php">BÀI TRẮC NGHIỆM</a></h3>   <!--  exercise/exercise.php -->
         				<p>
						 Ở đây bạn sẽ tìm thấy các bài toán vấn đề để thực hành và việc thực hiện chúng cũng sẽ cải thiện kiến thức, kỹ năng toán của bạn
         				</p>
         			</div>
         		</div>
         	</div>
         </div>
     </div>

			<!---Our Services Section Ends------->

			<section class="work" id="work"><br>
				<h2 id="work-heading" class="text-center" style="font-weight: bold;">NỔI BẬT</h2>
				<p class="text-center">Các lớp có kiến thức nền quan trọng</p>
				<div class="container-fluid">
					<!---first row start-->
					<div class="row no-gutters">
					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="img-wrapper">
							<a href="img/toan8.jpg" title="this is a sky image">
								<img src="img/toan8.jpg" class="img-responsive">
							</a>
							
						</div>
						
					</div>

					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="img-wrapper">
							<a href="img/toan9.jpg" title="this is a sky image">
								<img src="img/toan9.jpg" class="img-responsive">
							</a>
							
						</div>
						
					</div>

					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="img-wrapper">
							<a href="img/toan10.jpg" title="this is a sky image">
								<img src="img/toan10.jpg" class="img-responsive">
							</a>
							
						</div>
						
					</div>

					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="img-wrapper">
							<a href="img/toan12.jpg" title="this is a sky image">
								<img src="img/toan12.jpg" class="img-responsive">
							</a>
							
						</div>
						
					</div>
				</div>

			</section>


<!-- =============================================================================================================================== -->
			<!---FAQs Section Start------->

			<br><br><br>
			<section class="faq" id="myfaq">
				<div class="container">
					<div class="row">
						<div class="col-md-12 text-center">
							<h2><b>CÂU HỎI THƯỜNG GẶP</b></h2>
							<div class="sub-heading">
								<p>
								Bạn có thể hỏi về các vấn đề. <br>Giải quyết điều đó cùng nhau cho chắc chắn
								</p>
								
							</div>
						</div>	

					</div>
				</div> <br><br><br>
				<div class="container">
					<div class="row">
						<div class="col-md-7">
							<div class="panel-group" id="accordian">


								<?php 

								  $con=mysqli_connect('localhost','root');
									   if (!$con) {
									   	die('connection failed'.mysqli_connect_error());
									   }

									mysqli_select_db($con,'uniquedeveloper');

									$sql="select * from faq";
									$result=mysqli_query($con,$sql);
									while ($row=mysqli_fetch_array($result))
									{
					?>

								<div class="panel panel-default">
									<div class="panel-heading" id="headingOne">
										<h4 class="panel-title">
											<a href="#<?php echo $row['id']; ?>" data-toggle="collapse" class="collapse" data-parent="#accordian"><?php echo $row['faq_title']; ?></a>
										</h4>
									</div>
									<div id="<?php echo $row['id']; ?>" class="panel-collapse collapse " aria-labelledby="headingOne">
										<div class="panel-body">
											<p>
												<?php echo $row['faq_description']; ?>
											</p>
										</div>
									</div>
								</div>

							<?php } ?>



								<div class="panel panel-default">
									<div class="panel-heading" id="headingTwo">
										<h4 class="panel-title">
											<a href="#collapseTwo" class="collapsed" data-toggle="collapse" data-parent="#accordian">Nó hoạt động như thế nào?</a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse" aria-labelledby="headingTwo">
										<div class="panel-body">
											<p>
											127 Math là một trang web E-learning trực tuyến <br>
											ở đây bạn có thể học toán trung học và cải thiện kiến thức, kỹ năng toán của bạn	
											</p>
										</div>
									</div>
								</div>




								
							</div>
						</div>

						<div class="freeimage" id="meimg">
							<div class="col-md-2 col-md-offset">
								<img src="img/faq1.png">
							</div>
						</div>

					</div>
				</div>
				

			</section>


			<!---FAQs Section Ends------->


  			<!---This is script section------->

	<script type="text/javascript">
		
		var preloader=document.getElementById('loading');
		function myfunction()
		{
			preloader.style.display='none';
		}

	</script>

	<script src="js/jquery.ripples-min.js" type="text/javascript"></script>
	<script src="js/typed.min.js" type="text/javascript"></script>
	<script src="js/main.js" type="text/javascript"></script>

</body>
</html>