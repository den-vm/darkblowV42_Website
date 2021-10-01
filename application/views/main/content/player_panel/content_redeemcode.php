<div class="nk-main">
	<div class="container">
		<div class="nk-gap"></div>
		<h3 class="nk-decorated-h-2"><span><span class="text-main-1"><?php echo $this->lang->line('STR_DARKBLOW_120') ?></span> <?php echo $this->lang->line('STR_DARKBLOW_121') ?></span></h3>
		<div class="nk-gap-2"></div>
		<div class="row vertical-gap justify-content-center">
			<div class="col-lg-6">
				<div class="nk-gap-2"></div><div class="nk-gap-2"></div><div class="nk-gap-2"></div>
                <?php echo form_open('', 'id="redeemcode_form" autocomplete="off"') ?>
					<div class="form-group">
						<label for="redeemcode"><?php echo $this->lang->line('STR_DARKBLOW_122') ?></label>
						<input type="text" id="code" class="form-control" placeholder="<?php echo $this->lang->line('STR_DARKBLOW_123') ?>" autofocus>
					</div>
					<div class="form-group text-center">
						<input id="submit" type="submit" class="nk-btn nk-btn-rounded nk-btn-outline nk-btn-color-main-5" value="Submit Code">
					</div>
				<?php echo form_close() ?>
				<script>
					var CSRF_TOKEN = '<?php echo $this->security->get_csrf_hash() ?>';
					$(document).ready(function(){
						$('#redeemcode_form').on('submit', function(e){
							e.preventDefault();
							if ($('#code').val() == ""){
								ShowToast(2000, 'error', '<?php echo $this->lang->line('STR_WARNING_11') ?>');
								return;
							}
							else{
								
								SetAttribute('submit', 'button', 'Processing...');

								$.ajax({
									url: '<?php echo base_url('player_panel/redeemcode/do_redeem') ?>',
									type: 'POST',
									dataType: 'JSON',
									data: {
										'<?php echo $this->security->get_csrf_token_name() ?>' : CSRF_TOKEN,
										'code' : $('#code').val()
									},
									success: function(data){
										var decodeString = JSON.stringify(data);
										var Result = JSON.parse(decodeString);

										if (Result.response == 'true'){
											SetAttribute('submit', 'submit', 'Submit Code');
											ShowToast(2000, 'success', Result.message);
											CSRF_TOKEN = Result.token;
											return;
										}
										else if (Result.response == 'false'){
											SetAttribute('submit', 'submit', 'Submit Code');
											ShowToast(2000, 'error', Result.message);
											CSRF_TOKEN = Result.token;
											return;
										}
										else{
											SetAttribute('submit', 'submit', 'Submit Code');
											ShowToast(2000, 'error', Result.message);
											CSRF_TOKEN = Result.token;
											return;
										}
									},
									error: function(){
										ShowToast(1000, 'info', '<?php echo $this->lang->line('STR_INFO_1') ?>');
										SetAttribute('submit', 'button', 'Generating New Request Token...');

										$.ajax({
											url: '<?php echo base_url('api/getnewtoken') ?>',
											type: 'GET',
											dataType: 'JSON',
											data: {},
											success: function(data){
												var GetString = JSON.stringify(data);
												var Result = JSON.parse(GetString);

												if (Result.response == 'true'){
													CSRF_TOKEN = Result.token;
												}

												Do_RedeemCode();
											},
											error: function(){
												ShowToast(2000, 'error', '<?php echo $this->lang->line('STR_ERROR_10') ?>');
												SetAttribute('submit', 'submit', 'Submit Code');
												setTimeout(() => {
													window.location.reload();
												}, 2000);
											}
										});
									}
								});
							}
						});
					});

					function Do_RedeemCode()
					{
						SetAttribute('submit', 'button', 'Processing...');

						$.ajax({
							url: '<?php echo base_url('player_panel/redeemcode/do_redeem') ?>',
							type: 'POST',
							dataType: 'JSON',
							data: {},
							success: function(data){
								var GetString = JSON.stringify(data);
								var Result = JSON.parse(GetString);

								if (Result.response == 'true'){
									SetAttribute('submit', 'submit', 'Submit Code');
									ShowToast(2000, 'success', Result.message);
									CSRF_TOKEN = Result.token;
									return;
								}
								else if (Result.response == 'false'){
									SetAttribute('submit', 'submit', 'Submit Code');
									ShowToast(2000, 'error', Result.message);
									CSRF_TOKEN = Result.token;
									return;
								}
								else{
									SetAttribute('submit', 'submit', 'Submit Code');
									ShowToast(2000, 'error', Result.message);
									CSRF_TOKEN = Result.token;
									return;
								}
							},
							error: function(){
								ShowToast(2000, 'error', '<?php echo $this->lang->line('STR_ERROR_10') ?>');
								setTimeout(() => {
									window.location.reload();
								}, 2000);
							}
						});
					}
				</script>
				<div class="nk-gap-2"></div><div class="nk-gap-2"></div><div class="nk-gap-2"></div><div class="nk-gap-2"></div>
			</div>
		</div>
	</div>
</div>