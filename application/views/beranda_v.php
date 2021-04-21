
<link type="text/css" rel="stylesheet" href="<?= base_url('assets/light-gallery/dist/css/lightgallery.min.css') ?>" />

<aside id="fh5co-hero">
	<div class="flexslider">
		<ul class="slides">
			<?php foreach ($data_banner->result() as $row): ?>
				<li style="background-image: url(<?= base_url('uploads/banner/'.$row->gambar_banner) ?>);">
					<div class="overlay-gradient"></div>
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-md-offset-2 text-center slider-text">
								<div class="slider-text-inner">
									<?php if (isset($row->judul_banner)): ?>
										<h1><?= $row->judul_banner; ?></h1>
									<?php endif; ?>
									<?php if (isset($row->konten_banner)): ?>
										<h2><?= $row->konten_banner; ?></h2>	
									<?php endif; ?>
								</div>
							</div>
						</div>
					</div>
				</li>
			<?php endforeach; ?>
		</ul>
	</div>
</aside>

<?php 
if($data_sambutan->num_rows() > 0):
	foreach($data_sambutan->result() as $row):
		$src = base_url('uploads/background/'.$row->gambar_sambutan);
		?>

		<div id="fh5co-course-categories">
			<div id="salam-pembuka"></div>
			<div class="container">
				<div class="row animate-box">
					<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
						<h2>Salam Pembuka</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-5 col-sm-6 text-center animate-box">
						<div class="services">
							<img src="<?= $src ?>" class="img-responsive img-rounded">
						</div>
					</div>
					<div class="col-md-7 col-sm-6 animate-box text-justify">
						<?= $row->konten_sambutan; ?>
					</div>
				</div>
			</div>
		</div>
		<?php 
	endforeach;
endif;
?>

<?php
if($data_fasilitas->num_rows() > 0):
	$jumlah = $data_fasilitas->num_rows();
	?>
	<div id="fh5co-course-categories">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Fasilitas</h2>
					<p><?= $jumlah ?> alasan mengapa kamu harus memilih <?= $site_name; ?></p>
				</div>
			</div>
			<div class="row" id="galeriKu">
				<?php 
				foreach($data_fasilitas->result() as $row):
					$src_asli 	= base_url('uploads/fasilitas/'.$row->gambar_fasilitas);
					$src 		= base_url('uploads/fasilitas/thumbs/'.$row->gambar_fasilitas);
					?>
					<div class="col-md-3 col-sm-6 text-center animate-box">
						<div class="services">
							<a href="<?= $src_asli; ?>" class="galeri" data-sub-html="#kapsion<?= $row->id_fasilitas ?>">
								<img src="<?= $src ?>" class="img-fluid img-circle img-thumbnail">
							</a>
							<div class="desc" id="kapsion<?= $row->id_fasilitas ?>">
								<h4><?= $row->nama_fasilitas ?></h4>
								<p><?= $row->deskripsi_fasilitas ?></p>
							</div>
						</div>
					</div>
				<?php endforeach; ?>
			</div>
		</div>
	</div>

<?php endif; ?>

<?php if($data_berita->num_rows() > 0): ?>
	<div id="fh5co-course">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Berita</h2>
				</div>
			</div>
			<div class="row">
				<?php foreach($data_berita->result() as $row): ?>
					<div class="col-md-6 animate-box">
						<div class="course">
							<a id="galeriBerita" href="<?= base_url('uploads/berita/'.$row->gambar_berita) ?>" class="course-img" style="background-image: url(<?= base_url('uploads/berita/'.$row->gambar_berita) ?>);">
							</a>
							<div class="desc">
								<h3><a href="<?= site_url('berita/'.$row->slug_berita) ?>"><?= $row->nama_berita; ?></a></h3>
								<p><?= batasi_kata($row->konten_berita, 30); ?>...</p>
								<span><a href="<?= site_url('berita/'.$row->slug_berita) ?>" class="btn btn-primary btn-sm btn-course">Baca</a></span>
							</div>
						</div>
					</div>
				<?php endforeach; ?>
			</div>
			<?php if($data_berita->num_rows() > $limit_post): ?>	
				<div class="text-center">				
					<a href="<?= site_url('berita') ?>" class="btn btn-primary animate-box btn-course">Lihat Berita</a>
				</div>
			<?php endif; ?>
		</div>
	</div>
<?php endif; ?>

<div id="fh5co-testimonial" style="background-image: url(<?= base_url('assets/') ?>images/school.jpg);">
	<div class="overlay"></div>
	<div class="container">
		<div class="row animate-box">
			<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
				<h2><span>Apa Kata Mereka</span></h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="row animate-box">
					<div class="owl-carousel owl-carousel-fullwidth">
						<div class="item">
							<div class="testimony-slide active text-center">
								<div class="user" style="background-image: url(<?= base_url('assets/') ?>images/person1.jpg);"></div>
								<span>Mary Walker<br><small>Students</small></span>
								<blockquote>
									<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
								</blockquote>
							</div>
						</div>
						<div class="item">
							<div class="testimony-slide active text-center">
								<div class="user" style="background-image: url(<?= base_url('assets/') ?>images/person2.jpg);"></div>
								<span>Mike Smith<br><small>Students</small></span>
								<blockquote>
									<p>&ldquo;Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
								</blockquote>
							</div>
						</div>
						<div class="item">
							<div class="testimony-slide active text-center">
								<div class="user" style="background-image: url(<?= base_url('assets/') ?>images/person3.jpg);"></div>
								<span>Rita Jones<br><small>Teacher</small></span>
								<blockquote>
									<p>&ldquo;Far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
								</blockquote>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="fh5co-blog">
	<div class="container">
		<div class="row animate-box">
			<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
				<h2>Agenda &amp; Artikel</h2>
			</div>
		</div>

		<?php if($data_agenda->num_rows() > 0): ?>
			<div class="row row-padded-mb">
				<?php foreach ($data_agenda->result() as $row): ?>
					<div class="col-md-4 animate-box">
						<div class="fh5co-event">
							<div class="date text-center"><span><?= $row->tanggal ?><br><?= bulan_indo($row->bulan) ?></span></div>
							<h3><a href="<?= site_url('agenda/'.$row->slug_agenda) ?>"><?= $row->nama_agenda ?></a></h3>
							<p><?= batasi_kata($row->konten_agenda, 30) ?></p>
							<p><a href="<?= site_url('agenda/'.$row->slug_agenda) ?>">Selengkapnya...</a></p>
						</div>
					</div>				
				<?php endforeach; ?>
			</div>
			<?php if($data_agenda->num_rows() > $limit_post): ?>
				<div class="text-center">				
					<a href="<?= site_url('agenda') ?>" class="btn btn-primary animate-box">Semua Agenda</a>
				</div>
			<?php endif; ?>
		<?php endif; ?>

		<?php if($data_artikel->num_rows() > 0): ?>
			<div class="row">
				<?php foreach($data_artikel->result() as $row): ?>
					<div class="col-lg-4 col-md-4">
						<div class="fh5co-blog animate-box">
							<a id="galeriArtikel" href="<?= base_url('uploads/artikel/'.$row->gambar_artikel) ?>" style="background-image: url(<?= base_url('uploads/artikel/'.$row->gambar_artikel); ?>)" class="blog-img-holder"></a>
							<div class="blog-text">
								<h3><a title="<?= $row->judul_artikel ?>" href="<?= site_url('artikel/'.$row->slug_artikel) ?>"><?= $row->judul_artikel ?></a></h3>
								<span class="posted_on"><?= waktu_berlalu($row->tanggal_up_artikel) ?></span>
								<span class="comment"><a href="javascript:void(0)" title="dibaca 21x">21<i class="icon-eye3"></i></a>&nbsp;</span>
								<p><?= batasi_kata($row->konten_artikel, 15); ?></p>
							</div> 
						</div>
					</div>
				<?php endforeach; ?>
			</div>
			<?php if($data_artikel->num_rows() > $limit_post): ?>
				<div class="text-center">				
					<a href="<?= site_url('artikel') ?>" class="btn btn-primary animate-box">Semua Artikel</a>
				</div>
			<?php endif; ?>
		<?php endif; ?>
	</div>
</div>	

<!-- A jQuery plugin that adds cross-browser mouse wheel support. (Optional) -->
<script src="<?= base_url('assets/light-gallery/lib/jquery.mousewheel.min.js') ?>"></script>

<script src="<?= base_url('assets/light-gallery/dist/js/lightgallery.min.js'); ?>"></script>

<!-- lightgallery plugins -->
<script src="<?= base_url('assets/light-gallery/modules/lg-autoplay.min.js'); ?>"></script>
<script src="<?= base_url('assets/light-gallery/modules/lg-share.min.js'); ?>"></script>
<script src="<?= base_url('assets/light-gallery/modules/lg-video.min.js'); ?>"></script>
<script src="<?= base_url('assets/light-gallery/modules/lg-zoom.min.js'); ?>"></script>
<script src="<?= base_url('assets/light-gallery/modules/lg-thumbnail.min.js'); ?>"></script>
<script src="<?= base_url('assets/light-gallery/modules/lg-fullscreen.min.js'); ?>"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#galeriKu").lightGallery({
			selector: '.galeri',
			counter:true,
			html:true 
		}); 
		$("#galeriBerita, #galeriArtikel").lightGallery({
			selector: 'this',
			counter:true,
			html:true 
		}); 
	});
</script>