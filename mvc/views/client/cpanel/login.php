<?php require_once "./mvc/views/client/include/head.php"; ?>
<body>
<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
							<li><a href="#"><i class="fa fa-phone"></i>0332467642</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i>vothanhtu@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav nav-header">
								<li><a href="#"><i class="fab fa-facebook"></i></a></li>
								<li><a href="#"><i class="fab fa-youtube"></i></a></li>
								<li><a href="#"><i class="fab fa-instagram-square"></i></a></li>
								<li><a href="#"><i class="fab fa-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-md-2 clearfix">
						<div class="logo pull-left">
							<a href="<?=base?>"><img src="public/images/logo/logo.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-md-4 clearfix mob-ipa">
						<div class="shop-menu clearfix pull-left">
							<div class="mainmenu pull-left">
								<ul class="nav navbar-nav collapse navbar-collapse">
									<li><a href="">Trang Chủ</a></li>
									<li><a href="<?=base?>contact/contact">Liên Hệ</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 clearfix mob-ipa" >
						<div class="shop-menu clearfix pull-right">
						<ul class="nav navbar-nav collapse navbar-collapse" style="position: relative;">
							<?php if(isset($_SESSION["info"]["name"])){?>
								<li class="dropdown menu-info">
									<a class="text-info" href="javascrip:void(0)"> <?php echo '<i class="fa fa-user"></i>Xin chào '.$_SESSION['info']["name"].'<i class="fa fa-angle-down"></i>'; ?></a>
									<ul class="info-user">
											<li><a href="<?=base?>infouser/index">Thông tin cá nhân</a></li>
											<li><a href="<?=base?>home/history">Lịch sử mua hàng</a></li>
									</ul>
								</li>
							<?php }?>
								<li ><a class="display-flex" href="<?=base?>cart/showcart"><i class="fa fa-shopping-cart"></i> Giỏ Hàng</a></li>
								<li ><?php if(isset($_SESSION["info"]["name"])) echo '<a href="logout/logout"><i class="fas fa-sign-out-alt"></i>Đăng Xuất</a>'; else echo '<a href="login/login"><i class="fa fa-lock"></i>Đăng Nhập</a>'; ?></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="container" style="height: 500px; margin-top: 50px;">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-4">
					<div class="login-form"><!--login form-->
						<h2 style="color: #262626;text-align: center;">Đăng Nhập</h2>
                        <div style="height: 20px; width: 100%; color: red;"><?=$data["mess"]?><?php if(isset($_SESSION["error_login"])){echo $_SESSION["error_login"];unset($_SESSION["error_login"]);}?></div>
						<form action="login/login" method="post">
							<input type="text" placeholder="Email" name="email" value="<?=$data["email"]?>" required>
							<input type="password" placeholder="Mật Khẩu" name="password" value="<?=$data["pass"]?>" required>
                            <div style="display: flex; flex-direction:column; align-items:center">
                                <button type="submit" class="btn-login" name="login">Đăng Nhập</button>
                                <p class="p-login"> Bạn chưa có tài khoản ? <a href="sigin/sigin">Đăng Ký</a></p>
                            </div>
						</form>
					</div><!--/login form-->
				</div>
			</div>
		</div>
		
</body>
</html>