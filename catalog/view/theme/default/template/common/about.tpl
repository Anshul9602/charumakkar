<?php echo $header; ?>
<!-- breadcrumb area start -->
<div style="display: none;" class="breadcrumb-area hidden-phone">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-wrap">
          <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
              <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li class="breadcrumb-item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>

              <?php } ?>
            </ul>

          </nav>
        </div>
      </div>
    </div>
  </div>
</div>

<div style="height: 60vh; width:100%; background:url('image/about/b1.jpg'); background-size:cover; " class="banner">

</div>

<br /><br />
<div style=" width:100%; min-height: 600px;" class="container">

  <div class="row" style="display:flex; align-items:center;">
    <div class="col-xs-12 col-sm-6">
      <img src="image/about/b4.jpg" alt="" class="img-responsive">
    </div>
    <div class="col-xs-12 col-sm-6">
      <h4 style="font-weight: 400;">ABOUT US</h4>
      <br />
      <p style="font-size:14px; font-weight: 400; color:#4e4e4e;">An eclectic mix of fine fabrics, gorgeous handwork and modern silhouettes, Charu Makkar was founded with a passion for all things fashion.
        <br /><br />
        Founded in 2013 by the dynamic designer Charu Makkar, the brand is an amalgamation of western silhouettes, age-old Indian art techniques and premium fabrics coming together to create magic.
      </p><br />
      <p style="font-size:14px; font-weight: 400; color:#4e4e4e;  margin-bottom:35px;">
        We aim to keep you stylish and comfortable at the same time with our pleasingly
        aesthetic creations. Each piece at Charu Makkar is a fairy tale and we love putting in each stitch with utmost love and care. Every product has its special journey. Every outfit takes weeks of research about the latest styles &
        lots of dedication and immense hard-work from our talented team before they are displayed.</p>

    </div>
  </div><br /><br />
  <div class="row" style="display:flex; align-items:center; margin-top:50px;">

    <div class="col-xs-12 col-sm-6">
      <h4 style="font-weight: 400;">OUR FABRIC &amp; CRAFTS</h4><br />
      <p style="font-size:14px; font-weight: 400; color:#4e4e4e;">Trends might come and go but we pay attention to everlasting trends and styles. From trending prints to chic colours, we bring outfits for every mood.
        <br />
        We not only play with and thoughtfully select fabrics, we pay attention to each stitch and do both machine and hand-embroidery.
        <br />
        Be it Dabka, Zari, Bada, Pitton, & more; you name it and our talented team will get to work.
        With our latest collection launch we are diving into in-house block printing, digital printing and screen printing with each piece customised to our client's whim and fancy.
      </p>

    </div>
    <div class="col-xs-12 col-sm-6">
      <img src="image/about/b3.jpg" alt="" class="img-responsive">
    </div>
  </div>
</div>
<br /><br />
<?php echo $footer; ?>