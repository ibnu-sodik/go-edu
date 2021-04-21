<link rel="stylesheet" href="<?= base_url() ?>dists/css/select2.min.css" />
<link rel="stylesheet" href="<?= base_url() ?>dists/css/chosen.min.css" />
<div class="page-header">
	<h1>
		<?= $bc_aktif; ?>
		<?php if (isset($sm_text)): ?>
			<small>
				<i class="ace-icon fa fa-angle-double-right"></i>
				<?= $sm_text; ?>
			</small>			
		<?php endif ?>
	</h1>
</div>

<div class="row">
	<div class="col-xs-12 col-md-8">
		<div class="tabbable">
			<ul id="mytab" class="nav nav-tabs">
				<li class="active">
					<a href="<?= site_url('admin/menu') ?>">
						<i class="green ace-icon fa fa-list bigger-120"></i>
						Header Menu
					</a>
				</li>

				<li>
					<a href="<?= site_url('admin/menu/second') ?>" >
						<i class="purple ace-icon fa fa-list-alt bigger-120"></i>
						Footer Menu
					</a>
				</li>
			</ul>

			<div class="tab-content">
				<div class="tab-pane fade in active">
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<form class="form-horizontal" role="form" action="<?= $form_aksi; ?>" method="POST">
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="judul"> Judul Menu </label>

									<div class="col-sm-9">
										<input type="text" id="judul" name="judul" placeholder="Judul Menu" class="form-control"  value="<?= set_value('judul') ?>"/>
										<?php echo form_error('judul') ?>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="induk"> Induk Menu </label>

									<div class="col-sm-9">										
										<select class="form-control chosen-select" name="induk" id="induk" data-placeholder="Pilih Induk...">
											<option value="0">Tidak Berinduk</option>
											<?php foreach ($main_menu->result() as $row): ?>
												<option value="<?= $row->id_menu; ?>"><?= $row->judul; ?></option>
											<?php endforeach; ?>
										</select>
										<?php echo form_error('induk') ?>
									</div>
								</div>
								<div class="form-group" id="jenis_link">									
									<label class="col-sm-3 control-label no-padding-right" for="jenis_link"> Jenis Link </label>
									<div class="col-sm-9">
										<select name="jenis_link" class="form-control chosen-select">
											<option value="halaman">Halaman</option>
											<option value="agenda">Agenda</option>
											<option value="berita">Berita</option>
											<option value="kategori">Kategori</option>
											<option value="url">URL</option>
										</select>
									</div>
								</div>
								
								<div class="form-group" id="link_halaman">									
									<label class="col-sm-3 control-label no-padding-right" for="link_halaman"> Link Halaman </label>
									<div class="col-sm-9">
										<select name="link_halaman" class="form-control chosen-select">
											<option value="">Pilih Halaman</option>
											<?php foreach ($pil_halaman->result() as $row): ?>
												<option value="<?= $row->slug_halaman; ?>"><?= $row->nama_halaman; ?></option>
											<?php endforeach; ?>
										</select>
									</div>
								</div>
								<div class="form-group" id="link_kategori">									
									<label class="col-sm-3 control-label no-padding-right" for="link_kategori"> Link Kategori </label>
									<div class="col-sm-9 col-xs-12">
										<select name="link_kategori" class="form-control select2">
											<option value="">Pilih Kategori</option>
											<?php foreach ($pil_kategori->result() as $row): ?>
												<option value="<?= $row->slug_kategori; ?>"><?= $row->nama_kategori; ?></option>
											<?php endforeach; ?>
										</select>
									</div>
								</div>
								<div class="form-group" id="link_agenda">									
									<label class="col-sm-3 control-label no-padding-right" for="link_agenda"> Link Agenda </label>
									<div class="col-sm-9 col-xs-12">
										<select name="link_agenda" class="form-control select2">
											<option value="">Pilih Agenda</option>
											<?php foreach ($pil_agenda->result() as $row): ?>
												<option value="<?= $row->slug_agenda; ?>"><?= $row->nama_agenda; ?></option>
											<?php endforeach; ?>
										</select>
									</div>
								</div>
								<div class="form-group" id="link_berita">									
									<label class="col-sm-3 control-label no-padding-right" for="link_berita"> Link Berita </label>
									<div class="col-sm-9 col-xs-12">
										<select name="link_berita" class="form-control select2">
											<option value="">Pilih Berita</option>
											<?php foreach ($pil_berita->result() as $row): ?>
												<option value="<?= $row->slug_berita; ?>"><?= $row->nama_berita; ?></option>
											<?php endforeach; ?>
										</select>
									</div>
								</div>
								<div class="form-group" id="link_url">									
									<label class="col-sm-3 control-label no-padding-right" for="link_url"> Link URL </label>
									<div class="col-sm-4">
										<select name="link_url1" class="form-control">
											<option value=""></option>
											<option value="<?= base_url(''); ?>"><?= base_url(''); ?></option>
										</select>
									</div>
									<div class="col-sm-5">
										<input type="text" name="link_url2" class="form-control" placeholder="https://nama-link.domain">
									</div>
								</div>
								<div class="form-group">									
									<label class="col-sm-3 control-label no-padding-right" for="urut"> Urutan </label>
									<div class="col-sm-9">
										<select name="urut" class="form-control chosen-select">
											<option value="">--- Urutan ---</option>
											<?php for ($i=1; $i <=20 ; $i++): ?>
												<option value="<?= $i; ?>"><?= $i; ?></option>
											<?php endfor; ?>
										</select>
									</div>
									<?= form_error('urut'); ?>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"></label>
									<div class="col-sm-9">
										<input type="hidden" name="kategori_menu" value="main">
										<button type="submit" name="submit" class="btn btn-primary btn-block">Simpan <i class="fa fa-send"></i></button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>		
	</div>
</div>
<script src="<?= base_url() ?>dists/js/chosen.jquery.min.js"></script>
<script src="<?= base_url() ?>dists/js/select2.min.js"></script>

<script type="text/javascript">
	function tampil_form(selektor){
		if ($(selektor).val()=='halaman') {
			$('#link_halaman').show();
			$('#link_kategori, #link_url, #link_agenda, #link_berita').hide();
		}else if ($(selektor).val()=='kategori') {
			$('#link_kategori').show();
			$('#link_halaman, #link_url, #link_agenda, #link_berita').hide();
		}else if ($(selektor).val()=='url') {
			$('#link_url').show();
			$('#link_kategori, #link_halaman, #link_agenda, #link_berita').hide();
		}else if ($(selektor).val()=='agenda'){
			$('#link_agenda').show();
			$('#link_kategori, #link_url, #link_berita, #link_halaman').hide();
		}else if ($(selektor).val()=='berita'){
			$('#link_berita').show();
			$('#link_kategori, #link_url, #link_agenda, #link_halaman').hide();
		}
	}

	tampil_form('#jenis_link select');
	$('#jenis_link select').change(function(){
		tampil_form(this);
	});
	
	$(".select2").select2({
    	width: '100%', // need to override the changed default
    	theme: "classic"
    });

	jQuery(function($) {

		if(!ace.vars['touch']) {
			$('.chosen-select').chosen({allow_single_deselect:true}); 
			$('.chosen-select2').chosen({allow_single_deselect:true}); 
					//resize the chosen on window resize

					$(window).off('resize.chosen').on('resize.chosen', function() {
						$('.chosen-select').each(function() {
							var $this = $(this);
							$this.next().css({'width': $this.parent().width()});
						})
					}).trigger('resize.chosen');
					//resize chosen on sidebar collapse/expand
					$(document).on('settings.ace.chosen', function(e, event_name, event_val) {
						if(event_name != 'sidebar_collapsed') return;
						$('.chosen-select').each(function() {
							var $this = $(this);
							$this.next().css({'width': $this.parent().width()});
						})
					});
				}
			});
		</script>