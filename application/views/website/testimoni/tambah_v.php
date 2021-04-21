<link href="<?= base_url() ?>dists/dropify/dropify.min.css" rel="stylesheet">

<div id="fh5co-staff">
	<div class="container">
		<div class="row">
			<div class="col-md-6 text-center">
				div.
				<div class="staff">
					<div class="staff-img" style="background-image: url(images/staff-1.jpg);">
						<ul class="fh5co-social">
							<li><a href="#"><i class="icon-facebook2"></i></a></li>
							<li><a href="#"><i class="icon-twitter2"></i></a></li>
							<li><a href="#"><i class="icon-dribbble2"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul>
					</div>
					<span>Health Teacher</span>
					<h3><a href="#">Mike Smith</a></h3>
					<p>Nullam ac urna eu felis dapibus condimentum sit amet a augue. Sed non neque elit. Sed ut imperdiet nisi.</p>
				</div>
			</div>
			<div class="col-md-6 animate-box text-center fadeInUp animated-fast">
				<form enctype="multipart/form-data" action="<?= $form_action ?>" method="post">
					<div class="row form-group">
						<div class="col-md-12">
							<input type="file" name="filefoto" class="dropify" required>
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-12">
							<input type="text" name="nama_testimoni" autocomplete="off" class="form-control" placeholder="Nama Lengkap" value="<?= set_value('nama_testimoni'); ?>">
							<?= form_error('nama_testimoni'); ?>
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-12">
							<input type="text" name="profesi_testimoni" autocomplete="off" class="form-control" placeholder="Profesi Anda" value="<?= set_value('profesi_testimoni') ?>">
							<?= form_error('profesi_testimoni'); ?>
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-12" id="hitung">
							<textarea name="konten_testimoni" id="konten_testimoni" rows="4" class="form-control" placeholder="Tulis ulasan anda kepada kami..."><?= set_value('konten_testimoni') ?></textarea>
							<?= form_error('konten_testimoni'); ?>
							<p id="pesan"></p>
							Total karakter : <span id="current_count">0</span>
							<span id="maximum_count">/ 200</span>
							
						</div>
					</div>
					
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block">Kirim <i class="fa fa-send"></i></button>
					</div>

				</form>	
			</div>
		</div>
	</div>
</div>
<script src="<?= base_url() ?>dists/dropify/dropify.min.js"></script>
<script type="text/javascript">
	
	var maks_char = 200;
	$('#konten_testimoni').keyup(function(e) {    
		var characterCount = $(this).val().length,
		current_count = $('#current_count'),
		maximum_count = $('#maximum_count'),
		count = $('#hitung');    
		current_count.text(characterCount);
		if (characterCount > maks_char) {
			$('#pesan').html('<span class="text-danger">Batas karakter telah dicapai.</span>');
			return false;
		}      
	});

	$('.dropify').dropify({
		messages: {
			default: 'Foto profil anda',
			replace: 'Ganti',
			remove:  'Hapus',
			error:   'error'
		}
	});
</script>