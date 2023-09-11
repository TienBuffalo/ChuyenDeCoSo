<?php 
	session_start();
	include 'conn.inc.php';
 ?>

<!DOCTYPE html>
<html>
<head>
	<title>127 Math</title>

	<!----css file link-->
	<link rel="stylesheet" type="text/css" href="../../css/programming.css">

	<!-- icon -->
	<link rel="shortcut icon" type="text/css" href="../../img/mylogo.png">

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!----Linking google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">

	<style type="text/css">
		
		.card-body
		{
			border-style: solid !important;
			border-width:1px !important;
			border-color: #ccc;
		}

		.container
		{
			/* margin-top: 1%; */
		}

		.inner img
		{
			transition: all 1.5s ease;  /* to rotate image smoothly*/
			
		}
		.inner:hover img
		{
			transform:rotate(5deg);      /* to rotate the image 5 deg*/
			
		}


	</style>
</head>
<body style="background-color:#f1efef">
				<!---Navigation Starts	----->

	<nav class="navbar navbar-inverse navbar-fixed-top" >
		<div class="container">
			<div class="navbar-header">
				<h1 style="color: white;margin-top: 1px;" id="myhead">127 Math</h1>
			</div>
			<div class="collapse navbar-collapse" id="navi">
                 <!------Navigation menus starts---->
				<ul class="nav navbar-nav navbar-right">
					<li> <a href="../../index.php">Trang Chủ</a></li>
					<li> <a href="../../programmingdemo.php">KHÓA HỌC</a></li>
					<li> <a href="">BÀI GIẢNG</a></li>
					<li> <a href="../../online_quize/quizhome.php">KIỂM TRA</a></li>
					<li> <a href="../../logout.php" id="our-location" class="btn-success" ><?php echo $_SESSION['username']; ?></a></li>
				</ul>
	                 <!------Navigation menus ends---->
			</div>
		</div>
	</nav>
			<!---Navigation Ends	----->

	<br><br><br><br><br>

	<!---programming languages Section Start	----->
	<section class="latest-news-area" id="latest">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="section-title text-center">
						<h2><b>CHƯƠNG TRÌNH HỌC</b></h2>
						<div class="sub-heading">
							Sau đây là các video dạy toán trung học <br>
							Bắt đầu học ngay hôm nay
						</div>
					</div>
				</div>
			</div>

				<!-- video course card starts -->
			<br><br>
			<div class="container-fluid">
				<div class="row">
					<?php 
						$sql="select * from video_info";
						$result=mysqli_query($con,$sql);
						while ($row=mysqli_fetch_array($result))
						{
					?> 
						<div class="col-md-4">
							<div class="card shadow" style="width: 35rem; height: 12rem;">
								<div class="inner">                                                  <!--  to zoom in and zoom out effect -->
									<img class="card-img-top " style="height: 24rem;"   src=<?php echo $row['image']; ?> alt="Card image cap">
								</div>
								<div class="card-body text-center shadow">
									<a href="display_video_list.php?course_name=<?php echo $row['course_name']; ?>" class="btn btn-primary">watch videos</a>
								</div>
							</div>
							<br><br><br><br><br><br><br><br><br>
							
						</div>


					<?php } ?>     <!--  while loop closed -->
				</div>
			</div>
		</div>							<!-- video course card ends -->
	</section>

<!-- footer section starts -->

<footer style="margin-top: 90px;">
	<?php 
 		include "../../admin/includes/footer.php";
 	?>
</footer>

<!-- footer section ends -->

</body>
</html>
