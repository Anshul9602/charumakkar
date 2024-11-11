<style>
  @media screen and (max-width:650px) {
    .newsletter-inner .news-field {
      max-width: 200px
    }
  }

  .float {
    position: fixed;
    width: 60px;
    height: 60px;
    bottom: 110px;
    right: 20px;
    background-color: #25d366;
    color: #FFF;
    border-radius: 50px;
    text-align: center;
    font-size: 35px;
    box-shadow: 2px 2px 3px #999;
    z-index: 100;
  }
</style>
<!-- Scroll to top start -->
<div class="scroll-top not-visible">
  <i class="fa fa-angle-up"></i>
</div>
<!-- Scroll to Top End -->

<!-- footer area start -->
<footer class="footer-widget-area">
  <div class="footer-top section-padding">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6">
          <div class="widget-item">
            <div class="widget-title">
              <div class="widget-logo">
                <a href="index.php?route=common/home">
                  <img style="max-width: 200px;" src="<?php echo $logo; ?>" alt="brand logo">
                </a>
              </div>
            </div>
            <div class="widget-body">
              <p style="color: #ccc;">Live your own fairy tale with thoughtfully designed apparel
                to suit your every mood.
              </p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="widget-item">
            <h6 class="widget-title">Contact Us</h6>
            <div class="widget-body">
              <address class="contact-block">
                <ul>
                  <li><i class="pe-7s-home"></i> 182, Ram gali no 2, Raja Park, Jaipur</li>
                  <li><i class="pe-7s-mail"></i> <a style="color: #ccc;" href="mailto:info@charumakkar.com">info@charumakkar.com</a></li>
                  <li><i class="pe-7s-call"></i> <a style="color: #ccc;" href="tel:+919783834757">+91 978383 4757
                    </a></li>
                </ul>
              </address>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="widget-item">
            <h6 class="widget-title">Information</h6>
            <div class="widget-body">
              <ul class="info-list">
                <li><a href="index.php?route=common/about">about us</a></li>
                <?php foreach ($informations as $information) { ?>
                  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                <?php } ?>





                <li><a href="<?php echo $contact; ?>">contact us</a></li>
                <li><a href="<?php echo $sitemap; ?>">site map</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="widget-item">
            <h6 class="widget-title">Follow Us</h6>
            <div class="widget-body social-link">
              <a href="https://www.facebook.com/makkarcharu"><i class="fa fa-facebook"></i></a>

              <a href="https://www.instagram.com/charumakkarofficial/"><i class="fa fa-instagram"></i></a>

            </div>
          </div>
        </div>
      </div>
      <div class="row align-items-center mt-20">
        <div class="col-md-6">
          <div class="newsletter-wrapper">
            <h6 style="color: #FFD1A6;" class="widget-title-text">Signup for newsletter</h6>
            <form class="newsletter-inner" id="mc-form">
              <input type="email" class="news-field" id="mc-email" autocomplete="off" placeholder="Enter your email address">
              <button class="news-btn" id="mc-submit">Subscribe</button>
            </form>
            <!-- mailchimp-alerts Start -->
            <div class="mailchimp-alerts">
              <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
              <div class="mailchimp-success"></div><!-- mailchimp-success end -->
              <div class="mailchimp-error"></div><!-- mailchimp-error end -->
            </div>
            <!-- mailchimp-alerts end -->
          </div>
        </div>
        <div class="col-md-6">
          <div class="footer-payment">
            <img src="assets/img/payment.png" alt="payment method">
          </div>
        </div>
      </div>
    </div>
  </div>
  <div style="padding: 10px 0px; background-color:#777" class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="copyright-text text-center">
            <p style="font-size: 10px; color:#ccc">Website By <a href="https://theodin.in/">The Odin</a>. Charu Makkar © 2021</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <a href="https://api.whatsapp.com/send?phone=+919783834757&amp;text=HELLO" class="float" target="_blank">
    <i class="fa fa-whatsapp wp-button"></i>
  </a>

</footer>
<!-- footer area end -->




<!-- JS
============================================ -->

<!-- Modernizer JS -->
<script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>

<!-- Popper JS -->
<script src="assets/js/vendor/popper.min.js"></script>


<!-- Countdown JS -->
<script src="assets/js/plugins/countdown.min.js"></script>

<!-- jquery UI JS -->
<script src="assets/js/plugins/jqueryui.min.js"></script>
<!-- Image zoom JS -->
<script src="assets/js/plugins/image-zoom.min.js"></script>
<!-- Imagesloaded JS -->
<script src="assets/js/plugins/imagesloaded.pkgd.min.js"></script>
<!-- Instagram feed JS -->
<script src="assets/js/plugins/instagramfeed.min.js"></script>
<!-- mailchimp active js -->
<script src="assets/js/plugins/ajaxchimp.js"></script>
<!-- contact form dynamic js -->
<script src="assets/js/plugins/ajax-mail.js"></script>
<!-- google map api -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
<!-- google map active js -->
<script src="assets/js/plugins/google-map.js"></script>
<!-- Main JS -->
<script src="assets/js/main.js"></script>
<!-- jquery UI JS -->
<script src="assets/js/plugins/jqueryui.min.js"></script>
<!-- Bootstrap JS -->
<script src="assets/js/vendor/bootstrap.min.js"></script>

			<?php /*esbuygetcombo starts*/ ?>
			<style type="text/css">
			  .product-layout .product-thumb .image {
			  	position: relative;
			  	overflow: hidden;
			  }
			  .jbuygetcombo-wrap .jbuygetcombo-ribbon{
			  	text-align: center;
			    background: red;
			    color: #fff;
			    padding: 3px 10px;
			    transform: rotate(50deg);
			    font-size: 14px;
			    font-weight: bold;
			    width: 200px;
			    position: absolute;
			    right: -45px;
			    top: 55px;
			    white-space: nowrap;
			  }
			  /*j3*/
			  html[data-jv] .jbuygetcombo-wrap{
			  	right: 0;
			  }
			  /*j3*/
			</style>
			<?php /*esbuygetcombo ends*/ ?>
			
</body>

</html>