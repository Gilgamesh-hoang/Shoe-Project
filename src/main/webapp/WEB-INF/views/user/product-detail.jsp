<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="en-US">

<head>
    <meta charset="UTF-8">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Groover - Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more</title>
    <!-- Standard Favicon -->
    <link href="/user/images/favicon.ico" rel="shortcut icon">
    <!-- Base Google Font for Web-app -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <!-- Google Fonts for Banners only -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,800" rel="stylesheet">
    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="/user/css/bootstrap.min.css">
    <!-- Font Awesome 5 -->
    <link rel="stylesheet" href="/user/css/fontawesome.min.css">
    <!-- Ion-Icons 4 -->
    <link rel="stylesheet" href="/user/css/ionicons.min.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="/user/css/animate.min.css">
    <!-- Owl-Carousel -->
    <link rel="stylesheet" href="/user/css/owl.carousel.min.css">
    <!-- Jquery-Ui-Range-Slider -->
    <link rel="stylesheet" href="/user/css/jquery-ui-range-slider.min.css">
    <!-- Utility -->
    <link rel="stylesheet" href="/user/css/utility.css">
    <!-- Main -->
    <link rel="stylesheet" href="/user/css/bundle.css">
</head>
<body>

<!-- app -->
<div id="app">
    <!-- Header -->
    <%@ include file="./common/header.jsp" %>
    <!-- Header /- -->

    <!-- Single-Product-Full-Width-Page -->
    <div class="page-detail u-s-p-t-80">
        <div class="container">
            <!-- Product-Detail -->
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <!-- Product-zoom-area -->
                    <div class="zoom-area">
                        <img id="zoom-pro" class="img-fluid" src="${product.thumbnail}" data-zoom-image="${product.thumbnail}" alt="Zoom Image">
                        <div id="gallery" class="u-s-m-t-10">
                            <a class="active" data-image="${product.thumbnail}" data-zoom-image="${product.thumbnail}">
                                <img src="${product.thumbnail}" alt="Product">
                            </a>
                            <c:forEach var="image" items="${product.images}">
                                <a data-image="${image.url}" data-zoom-image="${image.url}">
                                    <img src="${image.url}" alt="Product">
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- Product-zoom-area /- -->
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <!-- Product-details -->
                    <div class="all-information-wrapper">
                        <div class="section-1-title-breadcrumb-rating">
                            <div class="product-title">
                                <h1>
                                    <a>${product.name}</a>
                                </h1>
                            </div>
                            <ul class="bread-crumb">
                                <li class="is-marked">
                                    <a>${product.category.name}</a>
                                </li>
                            </ul>
                            <div class="product-rating">
                                <div class='star' title="4.5 out of 5 - based on 23 Reviews">
                                    <span style='width:67px'></span>
                                </div>
                                <span>(23)</span>
                            </div>
                        </div>
                        <div class="section-2-short-description u-s-p-y-14">
                            <h6 class="information-heading u-s-m-b-8">Description:</h6>
                            <p>${product.shortDescription}</p>
                        </div>
                        <div class="section-3-price-original-discount u-s-p-y-14">
                            <c:if test="${product.discount != 0}">
                                <div class="price">
                                    <h4><fmt:formatNumber type="number" pattern="$#,##0.0" value="${product.price * (1 - product.discount)}" /></h4>
                                </div>
                                <div class="original-price">
                                    <span>Original Price:</span>
                                    <span><fmt:formatNumber type="number" pattern="$#,##0.0" value="${product.price}" /></span>
                                </div>
                                <div class="discount-price">
                                    <span>Discount:</span>
                                    <span><fmt:formatNumber type="number" maxFractionDigits="0" value="${product.discount * 100}"/>%</span>
                                </div>
                            </c:if>
                            <c:if test="${product.discount == 0}">
                                <div class="price">
                                    <h4><fmt:formatNumber type="number" pattern="$#,##0.0" value="${product.price}" /></h4>
                                </div>
                            </c:if>
                        </div>
                        <div class="section-4-sku-information u-s-p-y-14">
                            <h6 class="information-heading u-s-m-b-8">Sku Information:</h6>
                            <div class="availability">
                                <span>Availability:</span>
                                <span>In Stock</span>
                            </div>
                        </div>
                        <div class="section-5-product-variants u-s-p-y-14">
                            <h6 class="information-heading u-s-m-b-8">Product Variants:</h6>
                            <div class="sizes u-s-m-b-11">
                                <span>Available Size:</span>
                                <div class="size-variant select-box-wrapper">
                                    <select class="select-box product-size">
                                        <c:forEach var="item" items="${product.sizes}">
                                            <option value="${item.id}">${item.name}</option>

                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="section-6-social-media-quantity-actions u-s-p-y-14">
                            <form action="#" class="post-form">
                                <div class="quick-social-media-wrapper u-s-m-b-22">
                                    <span>Share:</span>
                                    <ul class="social-media-list">
                                        <li>
                                            <a href="#">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fab fa-google-plus-g"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fas fa-rss"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fab fa-pinterest"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
<%--                                <div class="quantity-wrapper u-s-m-b-22">--%>
<%--                                    <span>Quantity:</span>--%>
<%--                                    <div class="quantity">--%>
<%--                                        <input type="text" class="quantity-text-field" value="1">--%>
<%--                                        <a class="plus-a" data-max="1000">&#43;</a>--%>
<%--                                        <a class="minus-a" data-min="1">&#45;</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                                <div>
                                    <button class="button button-outline-secondary" type="submit">Add to cart</button>
                                    <button class="button button-outline-secondary far fa-heart u-s-m-l-6"></button>
                                    <button class="button button-outline-secondary far fa-envelope u-s-m-l-6"></button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Product-details /- -->
                </div>
            </div>
            <!-- Product-Detail /--->
            <!-- Detail-Tabs -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="detail-tabs-wrapper u-s-p-t-80">
                        <div class="detail-nav-wrapper u-s-m-b-30">
                            <ul class="nav single-product-nav justify-content-center">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#description">Description</a>
                                </li>
<%--                                <li class="nav-item">--%>
<%--                                    <a class="nav-link" data-toggle="tab" href="#specification">Specifications</a>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item">--%>
<%--                                    <a class="nav-link" data-toggle="tab" href="#review">Reviews (15)</a>--%>
<%--                                </li>--%>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <!-- Description-Tab -->
                            <div class="tab-pane fade active show" id="description">
                                <div class="description-whole-container">
                                    <c:out value="${product.description}"  escapeXml="false"/>
                                </div>
                            </div>
                            <!-- Description-Tab /- -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Detail-Tabs /- -->
            <!-- Different-Product-Section -->
            <div class="detail-different-product-section u-s-p-t-80">
                <!-- Similar-Products -->
                <section class="section-maker">
                    <div class="container">
                        <div class="sec-maker-header text-center">
                            <h3 class="sec-maker-h3">Similar Products</h3>
                        </div>
                        <div class="slider-fouc">
                            <div class="products-slider owl-carousel" data-item="4">
                                <c:forEach var="item" items="${similarProducts}">
                                    <div class="item">
                                        <div class="image-container">
                                            <a class="item-img-wrapper-link" href="<c:url value="/products/${item.id}"/> ">
                                                <img class="img-fluid" src="${item.thumbnail}" alt="Product">
                                            </a>
                                            <div class="item-action-behaviors">
                                                <a class="item-quick-look" data-toggle="modal" href="<c:url value="/products/${item.id}"/>">Quick Look</a>
                                                <a class="item-mail" href="javascript:void(0)">Mail</a>
                                                <a class="item-addwishlist" href="javascript:void(0)">Add to Wishlist</a>
                                                <a class="item-addCart" href="javascript:void(0)">Add to Cart</a>
                                            </div>
                                        </div>
                                        <div class="item-content">
                                            <div class="what-product-is">
                                                <ul class="bread-crumb">
                                                    <li class="has-separator">
                                                        <a>${item.category.name}</a>
                                                    </li>
                                                </ul>
                                                <h6 class="item-title">
                                                    <a href="<c:url value="/products/${item.id}"/>">${item.name}</a>
                                                </h6>
                                                <div class="item-stars">
                                                    <div class='star' title="0 out of 5 - based on 0 Reviews">
                                                        <span style='width:0'></span>
                                                    </div>
                                                    <span>(0)</span>
                                                </div>
                                            </div>
                                            <div class="price-template">
                                                <c:if test="${item.discount != 0}">
                                                    <div class="item-new-price">
                                                        <fmt:formatNumber type="number" pattern="$#,##0.0" value="${item.price * (1 - item.discount)}" />
                                                    </div>
                                                    <div class="item-old-price">
                                                        <fmt:formatNumber type="number" pattern="$#,##0.0" value="${item.price}" />
                                                    </div>
                                                </c:if>
                                                <c:if test="${item.discount == 0}">
                                                    <div class="item-new-price">
                                                        <fmt:formatNumber type="number" pattern="$#,##0.0" value="${item.price}" />
                                                    </div>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="tag new">
                                            <span>NEW</span>
                                        </div>
                                    </div>
                                </c:forEach>



                            </div>
                        </div>
                    </div>
                </section>
                <!-- Similar-Products /- -->

            </div>
            <!-- Different-Product-Section /- -->
        </div>
    </div>
    <!-- Single-Product-Full-Width-Page /- -->

    <!-- Footer -->
    <%@ include file="./common/footer.jsp" %>
    <!-- Footer /- -->

</div>

<!-- app /- -->

<!-- Modernizr-JS -->
<script type="text/javascript" src="/user/js/vendor/modernizr-custom.min.js"></script>
<!-- NProgress -->
<script type="text/javascript" src="/user/js/nprogress.min.js"></script>
<!-- jQuery -->
<script type="text/javascript" src="/user/js/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script type="text/javascript" src="/user/js/bootstrap.min.js"></script>
<!-- Popper -->
<script type="text/javascript" src="/user/js/popper.min.js"></script>
<!-- ScrollUp -->
<script type="text/javascript" src="/user/js/jquery.scrollUp.min.js"></script>
<!-- Elevate Zoom -->
<script type="text/javascript" src="/user/js/jquery.elevatezoom.min.js"></script>
<!-- jquery-ui-range-slider -->
<script type="text/javascript" src="/user/js/jquery-ui.range-slider.min.js"></script>
<!-- jQuery Slim-Scroll -->
<script type="text/javascript" src="/user/js/jquery.slimscroll.min.js"></script>
<!-- jQuery Resize-Select -->
<script type="text/javascript" src="/user/js/jquery.resize-select.min.js"></script>
<!-- jQuery Custom Mega Menu -->
<script type="text/javascript" src="/user/js/jquery.custom-megamenu.min.js"></script>
<!-- jQuery Countdown -->
<script type="text/javascript" src="/user/js/jquery.custom-countdown.min.js"></script>
<!-- Owl Carousel -->
<script type="text/javascript" src="/user/js/owl.carousel.min.js"></script>
<!-- Main -->
<script type="text/javascript" src="/user/js/app.js"></script>
</body>
</html>
