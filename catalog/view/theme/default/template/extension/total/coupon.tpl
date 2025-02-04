<div class="panel panel-default">
	<div class="panel-heading">
		<h4 class="panel-title">
			<a href="#collapse-coupon" style="color: #444;" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion">
				<?php echo $heading_title; ?> <i class="fa fa-caret-down"></i></a></h4>
	</div>
	<div id="collapse-coupon" style="margin-top:10px;" class="panel-collapse">
		<div class="panel-body">
			<div class="input-group">
				<input type="text" name="coupon" value="<?php echo $coupon; ?>" placeholder="<?php echo $entry_coupon; ?>" id="input-coupon" class="form-control" />
				<span class="input-group-btn">
					<button style="padding:0px 17.5px; height:40px; margin-top:0px; " id="button-coupon" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary">
						Apply
					</button>
				</span></div>
			<script type="text/javascript">
			$('#button-coupon').on('click', function() {
    $.ajax({
		url: 'index.php?route=extension/total/coupon/coupon',
		type: 'post',
		data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),
		dataType: 'json',
		beforeSend: function() {
			$('#button-coupon').button('loading');
		},
		complete: function() {
			$('#button-coupon').button('reset');
		},
		success: function(json) {
			$('.alert').remove();

			if (json['error']) {
				$('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}

			if (json['redirect']) {
				location = json['redirect'];
			}
		}
	});
});
			</script>
		</div>
	</div>
</div>
