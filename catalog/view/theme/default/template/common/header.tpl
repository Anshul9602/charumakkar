<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
  <?php } ?>

  <!-- google fonts -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">
  <!-- Pe-icon-7-stroke CSS -->
  <link rel="stylesheet" href="assets/css/vendor/pe-icon-7-stroke.css">
  <!-- Font-awesome CSS -->
  <link rel="stylesheet" href="assets/css/vendor/font-awesome.min.css">
  <!-- Slick slider css -->
  <link rel="stylesheet" href="assets/css/plugins/slick.min.css">
  <link rel="stylesheet" type="text/css" href="assets/css/plugins/slick-theme.css">
  <!-- animate css -->
  <link rel="stylesheet" href="assets/css/plugins/animate.css">
  <!-- Nice Select css -->
  <link rel="stylesheet" href="assets/css/plugins/nice-select.css">
  <!-- jquery UI css -->
  <link rel="stylesheet" href="assets/css/plugins/jqueryui.min.css">
  <!-- main style css -->
  <link rel="stylesheet" href="assets/css/style.css?v1.1">


  <!-- jQuery JS -->
  <script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
  <!-- slick Slider JS -->
  <script src="assets/js/plugins/slick.min.js"></script>

  <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>

  <script src="catalog/view/javascript/common.js" type="text/javascript"></script>

  <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
  <?php } ?>

  <style>
    @media (min-width: 1140px) {
      .container {
        max-width: 1140px;
      }
    }

    @media (min-width: 1200px) {
      .container {
        max-width: 90%;
      }
    }

    @media (min-width: 1450px) {
      .container {
        max-width: 1300px;
      }
    }

    .logo a img {
      width: 150px;
    }

    .main-menu ul.header-style-4>li a,

    [class^="pe-7s-"],
    [class*=" pe-7s-"] {
      color: #FFD1A6;

    }

    .mobile-main-header .mobile-menu-toggler .mobile-menu-btn span {
      background-color: #FFD1A6;
    }

    @media screen and (max-width:650px) {
      .sticky.is-sticky nav {
        display: none !important;
      }
    }
  </style>
<meta name="facebook-domain-verification" content="0d52oxvjwhl0mb0bpx99jqjp7h6hka" />
</head>

<body class="<?php echo $class; ?>">
  <!-- Start Header Area -->
  <header style="z-index: 999999; position:relative" class="header-area">
    <!-- main header start -->
    <div class="main-header d-none d-lg-block">
      <nav id="top">
        <div class="container">
          <div class="row">
            <div class="col-sm-4">
              <span id="donate-msg">
                <a style="color:#333; text-transform: initial" href="mailto:info@charumakkar.com">
                  <li class="fa fa-envelope"></li> &nbsp;Info@charumakkar.com
                </a>
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <span style="color:#333">
                  <li class="fa fa-phone"></li> +91 978383 4757
                </span>

              </span>

            </div>
            <div class="col-sm-4 text-center">

            </div>
            <div class="col-sm-4 workshop-link">

              <div style="border: none; padding:0px; margin:0px" class="mobile-settings">
                <span id="donate-msg">
                  <?php if (!$logged) { ?>
                    <a style="color:#333" href="index.php?route=account/register">
                      Hello, There!
                    </a>
                  <?php } else { ?>
                    <a style="color:#333" href="index.php?route=account/account">
                      Hello, <?php echo $text_customer_name; ?>!
                    </a>
                  <?php } ?>
                </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <ul style="float: right;" class="nav">
                  <li>
                    <div class="dropdown mobile-top-dropdown">
                      <?php print_r($currency);?>
                      
                    </div>
                  </li>

                </ul>
              </div>
            </div>
          </div>
        </div>
      </nav>

      <!-- header middle area start -->
      <div style=" background-color:rgb(51,51,51,0.6); backdrop-filter: saturate(180%) blur(10px);" class="header-main-area sticky main-menu-area">

        <div class="container p-10">
          <div class="row align-items-center ptb-10">
            <!-- start logo area -->
            <div class="col-lg-2">
              <div class="logo text-center">
                <a href="<?php echo $home; ?>">
                  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
                </a>
              </div>
            </div>
            <!-- start logo area -->
            <div class="col-lg-8">
              <div class="">

                <div class="main-menu">
                  <!-- main menu navbar start -->
                  <nav class="desktop-menu">
                    <ul class="justify-content-center header-style-4">
                      <li style="color:#fff"><a href="index.php?route=common/home">Home</a></li>

                      <?php foreach ($categories as $category) { ?>
                        <?php if (strtolower($category['name']) == "all categories") { ?>
                          <?php if ($category['children']) { ?>
                            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                              <?php foreach ($children as $child) { ?>
                                <li style="color:#fff">
                                  <a href="<?php echo $child['href']; ?>">
                                    <?php echo $child['name']; ?>
                                  </a>

                                  <?php if ($child['gc']) { ?>
                                    <ul class="dropdown">
                                      <?php foreach ($child['gc'] as $gc) { ?>

                                        <li>
                                          <a href="<?php print_r($gc['href']); ?>">
                                            <?php print_r($gc['name']); ?>
                                          </a>

                                          <?php if ($gc['g_gc']) { ?>
                                            <ul class="dropdown">
                                              <?php foreach ($gc['g_gc'] as $ggc) { ?>
                                                <li><a href="<?php print_r($ggc['href']); ?>">
                                                    <?php print_r($ggc['name']); ?>
                                                  </a></li>
                                              <?php } ?>
                                            </ul>
                                          <?php } ?>

                                        </li>
                                      <?php } ?>
                                    </ul>
                                  <?php } ?>
                                </li>
                              <?php } ?>
                            <?php } ?>
                          <?php } ?>
                        <?php } ?>
                      <?php  } ?>

                      <li style="color:#fff"><a href="index.php?route=information/contact">Contact</a></li>


                    </ul>
                  </nav>
                  <!-- main menu navbar end -->
                </div>


              </div>
            </div>
            <!-- mini cart area start -->
            <div style="padding: 0px;" class="col-lg-2">
              <div class="header-right d-flex align-items-center justify-content-end">
                <div class="header-configure-area">
                  <ul class="nav justify-content-end">
                    <li class="header-search-container mr-0">
                      <button class="search-trigger d-block">
                        <i class="pe-7s-search"></i>
                      </button>
                      <div class="header-search-box d-none animated fadeInLeft">
                        <input type="text" id="search_top" placeholder="Search" class="header-search-field">
                        <button class="search_icon_top header-search-btn"><i class="pe-7s-search"></i></button>
                      </div>
                    </li>
                    <li class="user-hover">
                      <a href="#">
                        <i class="pe-7s-user"></i>
                      </a>
                      <ul class="dropdown-list">
                        <?php if (!$logged) { ?>

                          <li><a href="index.php?route=account/login">Login</a></li>
                          <li><a href="index.php?route=account/register">Register</a></li>
                        <?php } else { ?>
                          <li><a href="index.php?route=account/account">My account</a></li>
                          <li><a href="index.php?route=account/logout">Logout</a></li>

                        <?php } ?>
                      </ul>
                    </li>
                    <li>
                      <a href="<?php echo $wishlist; ?>">
                        <i class="pe-7s-like"></i>

                      </a>
                    </li>
                    <li>
                      <a style="cursor:pointer;" class="minicart-btn">
                        <i class="pe-7s-shopbag"></i>
                        <div id="cart_count" class="notification"><?php echo $text_items; ?>
                        </div>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- mini cart area end -->
          </div>

        </div>
      </div>
      <!-- header middle area end -->
    </div>
    <!-- main header start -->

    <!-- mobile header start -->
    <!-- mobile header start -->
    <div style="padding: 0px; background-color:rgb(51,51,51,0.6); backdrop-filter: saturate(180%) blur(10px); " class="mobile-header d-lg-none d-md-block sticky">
      <nav id="top">
        <div class="container">
          <div class="row">
            <div class="col-7">
              <span id="donate-msg">
                <a style="color:#333; text-transform: initial" href="mailto:info@charumakkar.com">
                  <li class="fa fa-envelope"></li> &nbsp;Info@charumakkar.com
                </a>
              </span>

            </div>

            <div class="col-5 workshop-link">

              <div style="border: none; padding:0px; margin:0px" class="mobile-settings">
                <span id="donate-msg">
                  <?php if (!$logged) { ?>
                    <a style="color:#333" href="index.php?route=account/register">
                      Hello, There!
                    </a>
                  <?php } else { ?>
                    <a style="color:#333" href="index.php?route=account/account">
                      Hello, <?php echo $text_customer_name; ?>!
                    </a>
                  <?php } ?>
                </span>

              </div>
            </div>
          </div>
        </div>
      </nav>
      <!--mobile header top start -->
      <div style="padding: 10px;" class="container-fluid ">
        <div class="row align-items-center">
          <div class="col-12">
            <div class="mobile-main-header ">
              <div class="mobile-logo">
                <a href="<?php echo $home; ?>">
                  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
                </a>
              </div>
              <div class="mobile-menu-toggler">
                <div class="mini-cart-wrap">
                  <a style="cursor:pointer;" class="minicart-btn">
                    <i class="pe-7s-shopbag"></i>
                    <div id="cart_count" class="notification"><?php echo $text_items; ?>
                    </div>
                  </a>
                </div>
                <button class="mobile-menu-btn">
                  <span></span>
                  <span></span>
                  <span></span>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- mobile header top start -->
    </div>
    <!-- mobile header end -->
    <!-- mobile header end -->

    <!-- offcanvas mobile menu start -->
    <!-- off-canvas menu start -->
    <aside class="off-canvas-wrapper">
      <div class="off-canvas-overlay"></div>
      <div class="off-canvas-inner-content">
        <div class="btn-close-off-canvas">
          <i class="pe-7s-close"></i>
        </div>

        <div class="off-canvas-inner">
          <!-- search box start -->
          <div class="search-box-offcanvas">
            <input type="text" id="search_top1" placeholder="Search" class="header-search-field">

          </div>
          <!-- search box end -->

          <!-- mobile menu start -->
          <div class="mobile-navigation">

            <!-- mobile menu navigation start -->
            <nav>
              <ul class="mobile-menu">

                <li><a href="index.php?route=common/home">Home</a></li>


                <?php foreach ($categories as $category) { ?>
                  <?php if (strtolower($category['name']) == "all categories") { ?>
                    <?php if ($category['children']) { ?>
                      <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                        <?php foreach ($children as $child) { ?>
                          <li class="menu-item-has-children">
                            <a href="<?php echo $child['href']; ?>">
                              <?php echo $child['name']; ?>
                            </a>
                            <?php if ($child['gc']) { ?>
                              <ul class="dropdown">
                                <?php foreach ($child['gc'] as $gc) { ?>
                                  <li class="menu-item-has-children ">
                                    <a href="<?php print_r($gc['href']); ?>">
                                      <?php print_r($gc['name']); ?>
                                    </a>
                                    <?php if ($gc['g_gc']) { ?>
                                      <ul class="dropdown">
                                        <?php foreach ($gc['g_gc'] as $ggc) { ?>
                                          <li><a href="<?php print_r($ggc['href']); ?>">
                                              <?php print_r($ggc['name']); ?>
                                            </a></li>
                                        <?php } ?>
                                      </ul>
                                    <?php } ?>

                                  </li>
                                <?php } ?>
                              </ul>
                            <?php } ?>
                          </li>
                        <?php } ?>
                      <?php } ?>
                    <?php } ?>
                  <?php } ?>
                <?php  } ?>



                <li><a href="index.php?route=information/contact">Contact</a></li>
              </ul>
            </nav>
            <!-- mobile menu navigation end -->
          </div>
          <!-- mobile menu end -->

          <div class="mobile-settings">
            <ul class="nav">

              <li>
                <div class="dropdown mobile-top-dropdown">
                  <a href="#" class="dropdown-toggle" id="myaccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    My Account
                    <i class="fa fa-angle-down"></i>
                  </a><br />
                    <?php print_r($currency);?>
                  <div class="dropdown-menu" aria-labelledby="myaccount">
                    <?php if (!$logged) { ?>

                      <a class="dropdown-item" href="index.php?route=account/login">Login</a>
                      <a class="dropdown-item" href="index.php?route=account/register">Register</a>
                    <?php } else { ?>
                      <a class="dropdown-item" href="index.php?route=account/account">My account</a>
                      <a class="dropdown-item" href="index.php?route=account/logout">Logout</a>

                    <?php } ?>



                  </div>
                </div>
              </li>
            </ul>
          </div>

          <!-- offcanvas widget area start -->
          <div class="offcanvas-widget-area">
            <div class="off-canvas-contact-widget">
              <ul>
                <li><i class="fa fa-mobile"></i>
                  <a href="#">+91 978383 4757</a>
                </li>
                <li><i class="fa fa-envelope-o"></i>
                  <a href="#">info@charumakkar.com</a>
                </li>
              </ul>
            </div>

          </div>
          <!-- offcanvas widget area end -->
        </div>

      </div>
    </aside>
    <!-- off-canvas menu end -->
    <!-- offcanvas mobile menu end -->
    <?php echo $cart; ?>
  </header>
  <!-- end Header Area -->

  <script>
  $(document).ready(function(){
    $(".inr").click(function(e){
      e.preventDefault();
      $("#inr_input").val('INR');
      $("#form-currency").submit();
    })

    $(".usd").click(function(e){
      e.preventDefault();
       $("#inr_input").val('USD');
        $("#form-currency").submit();
    })

  })
  </script>
