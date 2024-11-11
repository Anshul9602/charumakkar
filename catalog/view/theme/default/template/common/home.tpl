<?php echo $header; ?>



<style>
  .subbox {
    BACKGROUND: #fff;
    width: 350px;
    margin: auto;
    margin-top: 15%;
    padding: 20px;
    border: 8px solid #FFD1A6;
  }

  .home-banners .slick-dots {
    bottom: 25px;
  }

  .parent-tile {
    height: 55vh;
    width: 100%;

    overflow: hidden;
    position: relative;
    display: inline-block;
    cursor: pointer;
  }

  .collection-tile {
    height: 100%;
    width: 100%;
    background-size: cover;
    background-repeat: no-repeat;
    -webkit-transition: all .5s;
    -moz-transition: all .5s;
    -o-transition: all .5s;
    transition: all .5s;
  }

  .collection-tile a {
    display: none;
    font-size: 35px;
    color: #ffffff !important;
    font-family: sans-serif;
    text-align: center;
    margin: auto;
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    height: 50px;
    cursor: pointer;
    /*text-decoration: none;*/
  }

  .parent-tile:hover .collection-tile,
  .parent-tile:focus .collection-tile {
    -ms-transform: scale(1.1);
    -moz-transform: scale(1.1);
    -webkit-transform: scale(1.1);
    -o-transform: scale(1.1);
    transform: scale(1.1);
  }

  .parent-tile:hover .collection-tile::before,
  .parent-tile:focus .collection-tile::before {
    display: block;
  }

  .parent-tile a {
    display: flex;
    opacity: 0;
    align-items: center;
    justify-content: center;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
  }

  .parent-tile:hover a,
  .parent-tile:focus a {
    opacity: 1;
  }

  .collection-tile::before {
    content: "";
    display: none;
    height: 100%;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-image: linear-gradient(0deg, rgba(0, 0, 0, 0.25), rgba(0, 0, 0, 0.25));
  }
</style>




<section style="margin-top: -70px;" class="home-banners">
  <div class="home-banner">
    <?php foreach ($banners as $banner) { ?>
      <div style=" height:100vh; background: url('image/<?php echo $banner['image']; ?>'); background-position:top; background-size:cover; background-repeat: no-repeat;">
        <div style="display:flex; align-items: center; justify-content: center; width: 100%; height:100%; padding-top:25%;">
          <div class="text-center">
            <h1 style="color:#fff; margin-bottom:30px; font-weight:600" class="text-center"><?php echo  $banner['title']; ?></h1>
            <a href="<?php echo $banner['link']; ?>">
              <button style="background-color: rgb(51,51,51,0.4);
    backdrop-filter: saturate(180%) blur(10px); color:#FFD1A6; text-transform:uppercase;
            padding:15px 35px; outline: none; border:none; font-size:12px;">
                View Collection
              </button>
            </a>
          </div>
        </div>
      </div>
    <?php } ?>
  </div>
</section>


<div style="background-color: rgb(0,0,0,0.7); display:none; width:100%; z-index:99999999999; height:100vh; position:fixed; top:0px; left:0px" class="overlayxx">
  <div class="subbox">
    <div style="margin-bottom:20px;" class="col-sm-12 text-center">
      <br />
      <img src="https://charumakkar.com/image/catalog/Charu%20Makkar%20Logo.png" class="img-responsive" />
      <br />
      <p style="color: #333; font-size: 14px; margin-top:30px">
        Be the first to hear from us
        <br />
        New Launches | Sales | Surprises
        <br /><br />
        <b style="font-size: 16px; text-transform:uppercase">first20</b>
        <br />
      </p>

      <h3 style="text-transform:uppercase; color: #2D2F21; font-family:noe;">20% OFF</h3>
      <p>Discount code</p>

    </div>

  </div>

</div>

<section class="new-collections" style="margin-top:70px;">
  <h3 class="text-center" style="margin-bottom:30px;">EXCLUSIVE PICKS</h3>
  <div class="line" style="height:1px; background-color: #000; width:50px; margin:0 auto;"></div>

  <div class="container" style="margin-top:50px;">
    <div class="row">
      <?php for ($i = 0; $i < sizeof($new_collections); $i++) { ?>
        <div class="col-xs-12 col-sm-6" style="padding: 15px;">
          <div class="wrapper" style="overflow:hidden;">
            <div class="parent-tile" onclick="">
              <div class="collection-tile" style="background-image: url('<?php echo 'image/' . $new_collections[$i]['image']; ?>'); padding-top:65%; position:relative; background-size:cover;">
              </div>
              <a href="<?php echo 'index.php?route=product/category&path=' .  $new_collections[$i]['category_id']; ?>" style="">
                <h3 style="color:#fff;"><?php echo $new_collections[$i]['name']; ?></h3>
              </a>

            </div>
          </div>

        </div>
      <?php } ?>
    </div>
  </div>


</section>


<section class="new-arrivals" style="margin-top:70px;">
  <h3 class="text-center" style="margin-bottom:30px;">NEW ARRIVALS</h3>
  <div class="line" style="height:1px; background-color: #000; width:50px; margin:0 auto;"></div>

  <div class="container" style="margin-top:50px;">
    <div class="row">
      <?php for ($i = 0; $i < sizeof($new_arrivals); $i++) { ?>

        <div class="col-xs-12 col-sm-6 col-md-4">
          <a class="plain-link" href="<?php echo $new_arrivals[$i]['href']  ?>">
            <div style="background-image:url('image/<?php echo  $new_arrivals[$i]['thumb']; ?>'); padding-top:132%; position:relative; background-size:cover;">

            </div>
            <p style="font-size: 14px; color:#4e4e4e; margin:15px 0; text-align:center;">
              <?php echo $new_arrivals[$i]['name']; ?> <span style="font-size:14px;">
                <br />
                <?php echo $new_arrivals[$i]['price']; ?></span> </p>
          </a>
        </div>



      <?php } ?>
    </div>
  </div>


</section>

<section class="most-loved" style="margin-top:70px;">
  <h3 class="text-center" style="margin-bottom:30px;">NOT TO MISS</h3>
  <div class="line" style="height:1px; background-color: #000; width:50px; margin:0 auto;"></div>

  <div class="container" style="margin-top:50px;">
    <div class="row">
      <?php for ($i = 0; $i < sizeof($most_loved); $i++) { ?>

        <div class="col-xs-12 col-sm-6 col-md-4">
          <a class="plain-link" href="<?php echo $most_loved[$i]['href']  ?>">
            <div style="background-image: url('image/<?php echo  $most_loved[$i]['thumb']; ?>'); padding-top:132%; position:relative; background-size:cover;">

            </div>
            <p style="font-size: 14px; color:#4e4e4e; margin:15px 0; text-align:center;"><?php echo $most_loved[$i]['name']; ?> <span style="font-size:12px;"> <br /><?php echo $most_loved[$i]['price']; ?></span> </p>
          </a>
        </div>
      <?php } ?>
    </div>
  </div>


</section>


<div class="line" style="height:1px; background-color: #000; width:50px; margin:30px auto;"></div>

<script>
  $('.home-banner').slick({
    autoplay: true,
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    dots: true,
    fade: true,
    cssEase: 'linear',
    autoplaySpeed: 5000
  });

  $('.home-sliders').slick({
    slidesToShow: 3,
    slidesToScroll: 3,
    dots: true,
    infinite: false,

    responsive: [{
        breakpoint: 1200,
        settings: {
          slidesToShow: 2.5,
          slidesToScroll: 2,
        }
      },
      {
        breakpoint: 970,
        settings: {
          slidesToShow: 1.5,
          slidesToScroll: 1,
        }
      },
      {
        breakpoint: 700,
        settings: {
          slidesToShow: 1.25,
          slidesToScroll: 1,
        }
      },
      {
        breakpoint: 500,
        settings: {
          slidesToShow: 1.25,
          slidesToScroll: 1,
        }
      },
      {
        breakpoint: 400,
        settings: {
          slidesToShow: 1.25,
          slidesToScroll: 1,
        }
      }
    ]
  });

  $(document).ready(function() {
  /*  setTimeout(function() {
      $(".overlayxx").fadeIn();
    }, 5000);*/

    $('body').on('click', '.overlayxx', function() {
      $(".overlayxx").fadeOut();
    })
  })
</script>

<style>
  .home-banners .slick-dots {
    bottom: 25px;
  }

  .home-banners .slick-dots li button:before {
    font-size: 14px;
  }
</style>


<?php echo $footer; ?>
