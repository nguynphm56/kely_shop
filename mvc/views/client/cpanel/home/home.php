<style>
    .paging{
        border: 1px solid #ccc;
        padding: 5px 9px;
        color: #000;
    }
    .paging-current{
        background: #666;
        color: #FFF;
    }
</style>
<section id="slider" style=" background:#FAFAFA" >
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active image-banner">
									<img style="object-fit: cover;" src="public/images/img_banner/bannerImage4.svg" class="girl img-responsive" alt="" />
							</div>
							<!--dùng foreach để duyệt cái slider-->
                            <?php foreach($data["sliders"] as $key=>$values){?>
							<div class="item image-banner">
									<img style="object-fit: cover;" src="public/images/img_banner/<?=$values['slider_img']?>" class="girl img-responsive" alt="" />
							</div>
							<?php }?>
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section>
<section style=" background:#FAFAFA" >
    <div class="container">
        <div class="row" style="display:flex;">
            <div style="display: flex; flex-direction: column;">
                <div class="" id="mobi">
    					<div class="left-sidebar">
    						<h2 style=" color: #262626; font-size: 21px; font-weight: 700; margin: 0 0 2rem 2rem;">Danh Mục</h2>
    						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
    							<div class="panel panel-default">
    								<div class="panel-heading">
    									<h4 class="panel-title"><a class="allproduct" href="javascript:void(0)">Tất Cả Sản Phẩm</a></h4>
    								</div>
    							</div>
                                <?php foreach($data["totalcategory"] as $key=>$values){ ?>
    
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                        <h4 class="panel-title"><a class="category" href="javascrip:void(0)" id_category = <?=$values["id"]?> ><?=$values["name"]?></a></h4>
                                        </div>
                                    </div>

                                <?php }?>
    
    						</div><!--/category-products-->
    						<!--San pham sale cu-->
                            
                        </div>
    			</div>
                <!--Sản Phẩm Sale-->
                <h2 class="title text-center" style="color: #262626; font-size: 36px; font-weight: 700;margin: 0 0 2rem 2rem;">Khuyến mãi</h2>
                            <?php foreach($data["productsale"] as $key=>$values){?>
                            <div class="">
                                <div class="product-image-wrapper"style="max-height: 400px; border-radius: 5px;">
                                    <div class="single-products"style="max-height: 400px;">
                                        <div class="productinfo text-center" style="max-height: 450px;">
                                            <img style="max-height: 250px; border-radius: 5px;min-height: 250px;object-fit: cover;" src="public/images/img_product/<?=$values["img_product"]?>" alt="" />
                                            <h4 style="text-decoration: line-through;"><?=number_format ($values["price"] , $decimals = 0 , $dec_point = "," , $thousands_sep = "." )?>đ</h4>
                                            <h2 style="margin: unset;"><?=number_format ($values["price"] * (1-$values["sale_product"]/100) , $decimals = 0 , $dec_point = "," , $thousands_sep = "." ) ?> đ</h2>
                                            <p style="margin-top: 10px ;"><?=$values["name"]?></p>
                                            <a href="javascript:void(0)" class="btn btn-default add-to-cart" idproduct = "<?=$values['id']?>"><i class="fa fa-shopping-cart"></i>Mua Hàng</a>
                                        </div>
                                        <img src="public/client/images/home/sale.png" class="new" alt="" />
                                    </div>
                                </div>
                            </div>
                            <?php }?>
            </div>
                <div class="col-sm-9 padding-right">
            
                <!--features_items-->
                    
                        <!-- <div class="">
                        
                    </div> -->
                    <!-- <h2 class="product-list--title text-center" style="padding-top: 3px;">Danh Sách Sản Phẩm</h2> -->
                    <h2 class="product-list--title text-center">Danh Sách Sản Phẩm</h2>
                    <!-- dùng để chứa sản phẩm -->
                    <div  class="features_items" id="listproduct"><!--features_items-->
                            <!-- trong này là sản phẩm -->
                    </div>
                    <!--phân trang-->
                    <div class="getpage" id="getpage" style="margin-bottom: 5px; margin-left: 15px;height: 30px;">
                            <!-- phân trang sản phẩm -->
                    </div>
                    <!--features_items-->
                    <!--<div style="margin-left: 400px; margin-bottom: 50px;" class="box-item-page">
                       <a class="page-item" href="javascript:void(0)">Xem Thêm</a>
                    </div>-->
                
                <!-- SAN PHAM MOI NHAT -->
                <div class="category-tab"><!--category-tab-->
                    <h2 class="title text-center" style="padding-top: 3px;">Sản Phẩm Mới Nhất</h2>
                    <div class="tab-content">
                        <?php foreach($data["productnew"] as $key=>$values){?>
                            <div class="tab-pane fade active in" id="tshirt" >
                                <div class="col-sm-3">
                                    <div class="product-image-wrapper" style="max-height: 400px; min-height: 400px;">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img style="min-height: 255px; max-height: 255px; object-fit: cover;" src="public/images/img_product/<?=$values["img_product"]?>" alt="" />
                                                <h4 style="text-decoration: line-through;"><?=number_format ($values["price"] , $decimals = 0 , $dec_point = "," , $thousands_sep = "." )?>đ</h4>
                                                <h2 style="margin:unset"><?=number_format ($values["price"] * (1-$values["sale_product"]/100) , $decimals = 0 , $dec_point = "," , $thousands_sep = "." ) ?> đ</h2>
                                                <p><?=$values["name"]?></p>
                                                <a href="javascript:void(0)" class="btn btn-default add-to-cart" idproduct = "<?=$values['id']?>"><i class="fa fa-shopping-cart"></i>Mua Hàng</a>
                                            </div>
                                            <img src="public/client/images/home/new.png" class="new" alt="" />
                                        </div>
                                    </div>
                                </div>
                            </div>   
                        <?php }?> 
                    </div><!--/category-tab-->
                </div>
                <!-- SAN PHAM BAN CHAY -->
                <!-- <div class="recommended_items">
                    <h2 class="title text-center">Sản Phẩm Bán Chạy</h2>
                    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">	
                                
                                   <?php foreach($data["MSProduct"] as $key=>$values){?>
                
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img style="max-height: 250px; object-fit: cover;min-height: 250px;" src="public/images/img_product/<?=$values["img_product"]?>" alt="" />
                                                <h4 style="text-decoration: line-through;"><?=number_format ($values["price"] , $decimals = 0 , $dec_point = "," , $thousands_sep = "." )?>đ</h4>
                                                <h2 style="margin:unset"><?=number_format ($values["price"] * (1-$values["sale_product"]/100) , $decimals = 0 , $dec_point = "," , $thousands_sep = "." ) ?> đ</h2>
                                                <p><?=$values["name"]?></p>
                                                <a href="javascript:void(0)" class="btn btn-default add-to-cart" idproduct = "<?=$values["id"]?>"><i class="fa fa-shopping-cart"></i>Mua Hàng</a>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <?php }?>
                            </div>
                        </div>
                            <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                            </a>
                            <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                            </a>			
                    </div>
                </div> -->
                
            </div>
        </div>
    </div>
</section>
<div>
</div>
<div class="features_items details" id="details" style="transform: translateY(-150%);">
<!--chi tiết sản phẩm-->
</div>
<div id="overflow" class="overflow">
<!-- lớp phủ của chi tiết sản phẩm -->
</div>
<div id="notification">
<!-- thông báo -->
</div>
<script src="public/homejs.js"></script>
<script>
    //thêm sản phẩm vào giỏ hàng
    $(document).on('click','.addcart',function(){
        idproduct =  $(this).attr('idproduct')
        $.post("ajax/addcart",{id:idproduct},function(data){
            $("#notification").html(data);
        });
    });
    //bắt sư kiện và truyền dữ liệu đi khi người dùng bấm nút "bình luận"
    $(document).on('click','.comment-product',function(){
        idproduct =  $(this).attr('idproduct')
        content   = $('.content-comment').val()
        $.post("ajax/commentproduct",{id_product:idproduct,content:content},function(data){
            $("#list-comment").append(data);
        });
        document.getElementById('content-comment').value = "";
    });
</script>
