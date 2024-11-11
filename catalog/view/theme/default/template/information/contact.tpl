<?php echo $header; ?>
<!-- breadcrumb area start -->
<div class="breadcrumb-area">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="breadcrumb-wrap">
          <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
              <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                  <li class="breadcrumb-item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
              </ul>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- breadcrumb area end -->
<div class="container">
  <!-- contact area start -->
  <div class="contact-area section-padding pt-20">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="contact-message">
            <h4 class="contact-title">Tell Us Your Project</h4>
             <form id="contact-form" action="" method="post" class="contact-form">
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <input name="first_name" placeholder="Name *" id="name" type="text" required>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <input name="phone" placeholder="Phone *" type="text" required>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <input name="email_address" placeholder="Email *" id="email" type="email" required>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <input name="contact_subject" placeholder="Subject *" type="text">
                </div>
                <div class="col-12">
                  <div class="contact2-textarea text-center">
                    <textarea placeholder="Message *" name="message" id="message" class="form-control2" required=""></textarea>
                  </div>
                  <div class="contact-btn">
                    <button class="btn btn-hero" id="send_con" type="submit">Send Message</button>
                  </div>
                </div>
                <div class="col-12 d-flex justify-content-center">
                  <p class="form-messege"></p>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="contact-info">
            <h4 class="contact-title">Contact Us</h4>
            <ul>
              <li><i class="fa fa-fax"></i> Address : 182, Ram gali no 2, Raja Park, Jaipur</li>
              <li><i class="fa fa-phone"></i> E-mail: info@charumakkar.com</li>
              <li><i class="fa fa-envelope-o"></i> +91 978383 4757</li>
            </ul>
            <div class="working-time">
              <h6>Working Hours</h6>
              <p><span>Monday – Saturday:</span>08AM – 07PM</p>
            </div>
            <br />
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3558.2395948443577!2d75.83056961547092!3d26.895890167288055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db6eb08bb5c7b%3A0x48f742eaf512e049!2sRam%20Gali%20Number%205%2C%20Raja%20Park%2C%20Jaipur%2C%20Rajasthan%20302007!5e0!3m2!1sen!2sin!4v1628942058946!5m2!1sen!2sin" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- contact area end -->
  <br /><br />
</div>

<script>
  $(document).ready(function(e) {
    function isEmail(email) {
      var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
      return regex.test(email);
    }

    $("#send_con").click(function(e) {
      e.preventDefault();
      if ($("#email").val() != "" && $("#name").val() != "" && $("#message").val() != "") {
        if (!isEmail($("#email").val())) {
          alert('Invalid Email');
          return false;
        }
        $.ajax({
          url: 'index.php?route=information/contact/send_email',
          method: 'POST',
          data: {
            "email": $("#email").val(),
            "phone": $("#phone").val(),
            "name": $("#name").val(),
            "message": $("#message").val(),
            "subject": $("#subject").val()
          },

          beforeSend: function() {
            $("#send_con").attr('disabled', true);
            $("#send_con").text('Sednig Email . .');
          },

          success: function(data) {

            alert("Thank you for your Message, we will be in touch!");
            $("#email").val("");
            $("#name").val("");
            $("#message").val("");
            $("#phone").val("");
            $("#subject").val("");

            $("#send_con").attr('disabled', false);
            $("#send_con").text('Send Email');
          }

        })
      } else {
        alert("Please fill the form completely");
      }


    })
  });
</script>


<?php echo $footer; ?>
