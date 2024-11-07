<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url value="/" var="URL"></c:url>
<head>
<meta charset="utf-8">
<title>UTE SHOP</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta content="Metronic Shop UI description" name="description">
<meta content="Metronic Shop UI keywords" name="keywords">
<meta content="keenthemes" name="author">

<meta property="og:site_name" content="-CUSTOMER VALUE-">
<meta property="og:title" content="-CUSTOMER VALUE-">
<meta property="og:description" content="-CUSTOMER VALUE-">
<meta property="og:type" content="website">
<meta property="og:image" content="-CUSTOMER VALUE-">
<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">

<link rel="shortcut icon" href="favicon.ico">

<!-- Fonts START -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all"
	rel="stylesheet" type="text/css">
<!--- fonts for slider on the index page -->
<!-- Fonts END -->

<!-- Global styles START -->
<link
	href="${URL}assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${URL}assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Global styles END -->

<!-- Page level plugin styles START -->
<link
	href="${URL}assets/global/plugins/fancybox/source/jquery.fancybox.css"
	rel="stylesheet">
<link
	href="${URL}assets/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel.css"
	rel="stylesheet">
<link
	href="${URL}assets/global/plugins/slider-layer-slider/css/layerslider.css"
	rel="stylesheet">
<link href="${URL}assets/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css">
<!-- Page level plugin styles END -->

<!-- Theme styles START -->
<link href="${URL}assets/global/css/components.css" rel="stylesheet">
<link href="${URL}assets/frontend/layout/css/style.css" rel="stylesheet">
<link href="${URL}assets/frontend/pages/css/style-shop.css"
	rel="stylesheet" type="text/css">
<link href="${URL}assets/frontend/pages/css/style-layer-slider.css"
	rel="stylesheet">
<link href="${URL}assets/frontend/layout/css/style-responsive.css"
	rel="stylesheet">
<link href="${URL}assets/frontend/layout/css/themes/red.css"
	rel="stylesheet" id="style-color">
<link href="${URL}assets/frontend/layout/css/custom.css"
	rel="stylesheet">
<!-- Theme styles END -->
</head>
<!-- BEGIN TOP BAR -->
<div class="pre-header">
	<div class="container">
		<div class="row">
			<!-- BEGIN TOP BAR LEFT PART -->
			<div class="col-md-6 col-sm-6 additional-shop-info">
				<ul class="list-unstyled list-inline">
					<li><i class="fa fa-phone"></i><span>+84 902 763 319</span></li>
					<!-- BEGIN CURRENCIES -->
					<li class="shop-currencies"><a href="javascript:void(0);" c
						lass="current">VND</a> <a href="javascript:void(0);">$</a></li>
					<!-- END CURRENCIES -->
					<!-- BEGIN LANGS -->
					<li class="langs-block"><a href="javascript:void(0);"
						class="current">English </a>
						<div class="langs-block-others-wrapper">
							<div class="langs-block-others">
								<a href="javascript:void(0);">Vietnamese</a> <a
									href="javascript:void(0);">Chinese</a> <a
									href="javascript:void(0);">Laos</a>
							</div>
						</div></li>
					<!-- END LANGS -->
				</ul>
			</div>
			<!-- END TOP BAR LEFT PART -->
			<!-- BEGIN TOP BAR MENU -->
			<div class="col-md-6 col-sm-6 additional-nav">
				<ul class="list-unstyled list-inline pull-right">
					 <c:choose>
							<c:when test="${sessionScope.account == null }">
								<li><a href="${pageContext.request.contextPath }/login">My Account</a></li>
                       	 		<li><a href="${pageContext.request.contextPath }/login">My Wishlist</a></li>
                        		<li><a href="${pageContext.request.contextPath }/login">Checkout</a></li>
								<li><a href="${pageContext.request.contextPath }/login">Login </a></li>
								<li><a href="${pageContext.request.contextPath }/register">Register </a></li>
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${sessionScope.rolestring == 'ADMIN'}  "> 
									<li><a href="${pageContext.request.contextPath }/vendor/mystore">Store Manager</a></li>
									<li><a href="${pageContext.request.contextPath }/vendor/myaccount">${sessionScope.firstname } ${sessionScope.lastname}</a> </li>
									<li><a href="${pageContext.request.contextPath }/logout">Logout </a> </li>
									</c:when >
									<c:otherwise>
									<li><a href="${pageContext.request.contextPath }/user/mycart">My Cart</a></li>
									<li><a href="${pageContext.request.contextPath }/user/myaccount">${sessionScope.account.firstname } ${sessionScope.account.lastname}</a> </li>
									<li><a href="${pageContext.request.contextPath }/logout">Logout </a> </li>
								</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
				</ul>
			</div>
			<!-- END TOP BAR MENU -->
		</div>
	</div>
</div>
<!-- END TOP BAR -->
<!-- BEGIN HEADER -->
<div class="header">
	<div class="container">
		<a class="site-logo"
			href="${pageContext.request.contextPath }/vendor/home"><img
			src="${URL}/assets/frontend/layout/img/logos/ute_shop_logo.png"
			alt="UTE SHOP UI"></a> <a href="javascript:void(0);"
			class="mobi-toggler"><i class="fa fa-bars"></i></a>

		<!-- BEGIN CART -->
		<div class="top-cart-block">
			<div class="top-cart-info">
				<a href="javascript:void(0);" class="top-cart-info-count">0
					items</a> <a href="javascript:void(0);" class="top-cart-info-value">1000VND</a>
			</div>
			<i class="fa fa-shopping-cart"></i>

			<div class="top-cart-content-wrapper">
				<div class="top-cart-content">
					<ul class="scroller" style="height: 250px;">
						<li><a href="shop-item.html"><img
								src="${URL}/assets/frontend/pages/img/cart-img.jpg"
								alt="Rolex Classic Watch" width="37" height="34"></a> <span
							class="cart-content-count">x 1</span> <strong><a
								href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
							href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
						<li><a href="shop-item.html"><img
								src="${URL}/assets/frontend/pages/img/cart-img.jpg"
								alt="Rolex Classic Watch" width="37" height="34"></a> <span
							class="cart-content-count">x 1</span> <strong><a
								href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
							href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
						<li><a href="shop-item.html"><img
								src="${URL}/assets/frontend/pages/img/cart-img.jpg"
								alt="Rolex Classic Watch" width="37" height="34"></a> <span
							class="cart-content-count">x 1</span> <strong><a
								href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
							href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
						<li><a href="shop-item.html"><img
								src="${URL}/assets/frontend/pages/img/cart-img.jpg"
								alt="Rolex Classic Watch" width="37" height="34"></a> <span
							class="cart-content-count">x 1</span> <strong><a
								href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
							href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
						<li><a href="shop-item.html"><img
								src="${URL}/assets/frontend/pages/img/cart-img.jpg"
								alt="Rolex Classic Watch" width="37" height="34"></a> <span
							class="cart-content-count">x 1</span> <strong><a
								href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
							href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
						<li><a href="shop-item.html"><img
								src="${URL}/assets/frontend/pages/img/cart-img.jpg"
								alt="Rolex Classic Watch" width="37" height="34"></a> <span
							class="cart-content-count">x 1</span> <strong><a
								href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
							href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
						<li><a href="shop-item.html"><img
								src="${URL}/assets/frontend/pages/img/cart-img.jpg"
								alt="Rolex Classic Watch" width="37" height="34"></a> <span
							class="cart-content-count">x 1</span> <strong><a
								href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
							href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
						<li><a href="shop-item.html"><img
								src="${URL}/assets/frontend/pages/img/cart-img.jpg"
								alt="Rolex Classic Watch" width="37" height="34"></a> <span
							class="cart-content-count">x 1</span> <strong><a
								href="shop-item.html">Rolex Classic Watch</a></strong> <em>$1230</em> <a
							href="javascript:void(0);" class="del-goods">&nbsp;</a></li>
					</ul>
					<div class="text-right">
						<a href="shop-shopping-cart.html" class="btn btn-default">View
							Cart</a> <a href="shop-checkout.html" class="btn btn-primary">Checkout</a>
					</div>
				</div>
			</div>
		</div>
		<!--END CART -->

		<!-- BEGIN NAVIGATION -->
		<div class="header-navigation">
			<ul>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" data-target="#" href="#"> Áo </a> <!-- BEGIN DROPDOWN MENU -->
					<ul class="dropdown-menu">
						<li class="dropdown-submenu"><a href="shop-product-list.html">Áo
								khoa <i class="fa fa-angle-right"></i>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="shop-product-list.html">Áo khoa CNTT</a></li>
								<li><a href="shop-product-list.html">Áo khoa Kinh tế</a></li>
								<li><a href="shop-product-list.html">Áo khoa Cơ khí</a></li>
								<li class="dropdown-submenu"></li>
							</ul></li>
						<li><a href="shop-product-list.html">Áo tốt nghiệp</a></li>
						<li><a href="shop-product-list.html">Áo thể dục</a></li>
					</ul> <!-- END DROPDOWN MENU --></li>
				<li class="dropdown dropdown-megamenu"><a
					class="dropdown-toggle" data-toggle="dropdown" data-target="#"
					href="#"> Man </a>
					<ul class="dropdown-menu">
						<li>
							<div class="header-navigation-content">
								<div class="row">
									<div class="col-md-4 header-navigation-col">
										<h4>Footwear</h4>
										<ul>
											<li><a href="shop-product-list.html">Astro Trainers</a></li>
											<li><a href="shop-product-list.html">Basketball
													Shoes</a></li>
											<li><a href="shop-product-list.html">Boots</a></li>
											<li><a href="shop-product-list.html">Canvas Shoes</a></li>
											<li><a href="shop-product-list.html">Football Boots</a></li>
											<li><a href="shop-product-list.html">Golf Shoes</a></li>
											<li><a href="shop-product-list.html">Hi Tops</a></li>
											<li><a href="shop-product-list.html">Indoor and
													Court Trainers</a></li>
										</ul>
									</div>
									<div class="col-md-4 header-navigation-col">
										<h4>Clothing</h4>
										<ul>
											<li><a href="shop-product-list.html">Base Layer</a></li>
											<li><a href="shop-product-list.html">Character</a></li>
											<li><a href="shop-product-list.html">Chinos</a></li>
											<li><a href="shop-product-list.html">Combats</a></li>
											<li><a href="shop-product-list.html">Cricket
													Clothing</a></li>
											<li><a href="shop-product-list.html">Fleeces</a></li>
											<li><a href="shop-product-list.html">Gilets</a></li>
											<li><a href="shop-product-list.html">Golf Tops</a></li>
										</ul>
									</div>
									<div class="col-md-4 header-navigation-col">
										<h4>Accessories</h4>
										<ul>
											<li><a href="shop-product-list.html">Belts</a></li>
											<li><a href="shop-product-list.html">Caps</a></li>
											<li><a href="shop-product-list.html">Gloves, Hats
													and Scarves</a></li>
										</ul>

										<h4>Clearance</h4>
										<ul>
											<li><a href="shop-product-list.html">Jackets</a></li>
											<li><a href="shop-product-list.html">Bottoms</a></li>
										</ul>
									</div>
									<div class="col-md-12 nav-brands">
										<ul>
											<li><a href="shop-product-list.html"><img
													title="esprit" alt="esprit"
													src="${URL}/assets/frontend/pages/img/brands/esprit.jpg"></a></li>
											<li><a href="shop-product-list.html"><img
													title="gap" alt="gap"
													src="${URL}/assets/frontend/pages/img/brands/gap.jpg"></a></li>
											<li><a href="shop-product-list.html"><img
													title="next" alt="next"
													src="${URL}/assets/frontend/pages/img/brands/next.jpg"></a></li>
											<li><a href="shop-product-list.html"><img
													title="puma" alt="puma"
													src="${URL}/assets/frontend/pages/img/brands/puma.jpg"></a></li>
											<li><a href="shop-product-list.html"><img
													title="zara" alt="zara"
													src="${URL}/assets/frontend/pages/img/brands/zara.jpg"></a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
					</ul></li>
				<li><a href="shop-item.html">Kids</a></li>
				<li class="dropdown dropdown100 nav-catalogue"><a
					class="dropdown-toggle" data-toggle="dropdown" data-target="#"
					href="#"> New </a>
					<ul class="dropdown-menu">
						<li>
							<div class="header-navigation-content">
								<div class="row">
									<div class="col-md-3 col-sm-4 col-xs-6">
										<div class="product-item">
											<div class="pi-img-wrapper">
												<a href="shop-item.html"><img
													src="${URL}/assets/frontend/pages/img/products/model4.jpg"
													class="img-responsive" alt="Berry Lace Dress"></a>
											</div>
											<h3>
												<a href="shop-item.html">Berry Lace Dress</a>
											</h3>
											<div class="pi-price">$29.00</div>
											<a href="#" class="btn btn-default add2cart">Add to cart</a>
										</div>
									</div>
									<div class="col-md-3 col-sm-4 col-xs-6">
										<div class="product-item">
											<div class="pi-img-wrapper">
												<a href="shop-item.html"><img
													src="${URL}/assets/frontend/pages/img/products/model3.jpg"
													class="img-responsive" alt="Berry Lace Dress"></a>
											</div>
											<h3>
												<a href="shop-item.html">Berry Lace Dress</a>
											</h3>
											<div class="pi-price">$29.00</div>
											<a href="#" class="btn btn-default add2cart">Add to cart</a>
										</div>
									</div>
									<div class="col-md-3 col-sm-4 col-xs-6">
										<div class="product-item">
											<div class="pi-img-wrapper">
												<a href="shop-item.html"><img
													src="${URL}/assets/frontend/pages/img/products/model7.jpg"
													class="img-responsive" alt="Berry Lace Dress"></a>
											</div>
											<h3>
												<a href="shop-item.html">Berry Lace Dress</a>
											</h3>
											<div class="pi-price">$29.00</div>
											<a href="#" class="btn btn-default add2cart">Add to cart</a>
										</div>
									</div>
									<div class="col-md-3 col-sm-4 col-xs-6">
										<div class="product-item">
											<div class="pi-img-wrapper">
												<a href="shop-item.html"><img
													src="${URL}/assets/frontend/pages/img/products/model4.jpg"
													class="img-responsive" alt="Berry Lace Dress"></a>
											</div>
											<h3>
												<a href="shop-item.html">Berry Lace Dress</a>
											</h3>
											<div class="pi-price">$29.00</div>
											<a href="#" class="btn btn-default add2cart">Add to cart</a>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul></li>
				<li class="dropdown active"><a class="dropdown-toggle"
					data-toggle="dropdown" data-target="#" href="#"> Pages </a>

					<ul class="dropdown-menu">
						<li><a href="shop-index.html">Home Default</a></li>
						<li class="active"><a href="shop-index-header-fix.html">Home
								Header Fixed</a></li>
						<li><a href="shop-index-light-footer.html">Home Light
								Footer</a></li>
						<li><a href="shop-product-list.html">Product List</a></li>
						<li><a href="shop-search-result.html">Search Result</a></li>
						<li><a href="shop-item.html">Product Page</a></li>
						<li><a href="shop-shopping-cart-null.html">Shopping Cart
								(Null Cart)</a></li>
						<li><a href="shop-shopping-cart.html">Shopping Cart</a></li>
						<li><a href="shop-checkout.html">Checkout</a></li>
						<li><a href="shop-about.html">About</a></li>
						<li><a href="shop-contacts.html">Contacts</a></li>
						<li><a href="shop-account.html">My account</a></li>
						<li><a href="shop-wishlist.html">My Wish List</a></li>
						<li><a href="shop-goods-compare.html">Product Comparison</a></li>
						<li><a href="shop-standart-forms.html">Standart Forms</a></li>
						<li><a href="shop-faq.html">FAQ</a></li>
						<li><a href="shop-privacy-policy.html">Privacy Policy</a></li>
						<li><a href="shop-terms-conditions-page.html">Terms &amp;
								Conditions</a></li>
					</ul></li>
				<li><a href="index.html" target="_blank">Corporate</a></li>
				<li><a href="onepage-index.html" target="_blank">One Page</a></li>
				<li><a
					href="http://keenthemes.com/preview/metronic/theme/templates/admin&amp;page=ecommerce_index.html"
					target="_blank">Admin theme</a></li>

				<!-- BEGIN TOP SEARCH -->
				<li class="menu-search"><span class="sep"></span> <i
					class="fa fa-search search-btn"></i>
					<div class="search-box">
						<form action="#">
							<div class="input-group">
								<input type="text" placeholder="Search" class="form-control">
								<span class="input-group-btn">
									<button class="btn btn-primary" type="submit">Search</button>
								</span>
							</div>
						</form>
					</div></li>
				<!-- END TOP SEARCH -->
			</ul>
		</div>
		<!-- END NAVIGATION -->
	</div>
</div>
<!-- Header END -->
<script src="${URL}/assets/frontend/layout/js/scripts/layout.js"></script>
<script src="${URL}/assets/frontend/layout/js/scripts/back-to-top.js"></script>