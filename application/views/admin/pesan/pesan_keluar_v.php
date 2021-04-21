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
	<div class="tabbable">
		<ul class="inbox-tabs nav nav-tabs padding-16 tab-size-bigger tab-space-1">

			<li class="">
				<a href="<?= site_url('admin/pesan') ?>" aria-expanded="true">
					<i class="blue ace-icon fa fa-inbox bigger-130"></i>
					<span class="bigger-110">Pesan Masuk</span>
				</a>
			</li>

			<li class="active">
				<a href="<?= site_url('admin/pesan/keluar') ?>" aria-expanded="true">
					<i class="orange ace-icon fa fa-external-link bigger-130"></i>
					<span class="bigger-110">Pesan Keluar</span>
				</a>
			</li>
			
		</ul>
		<div class="tab-content">

			<div class="tab-pane fade in active">
				<div class="table-responsive konten-pesan">
					<table class="table table-hover table-bordered" id="tabelku">
						<thead>
							<tr>
								<th class="text-center">
									<label class="inline middle">
										<input type="checkbox" id="id-toggle-all" class="ace" />
										<span class="lbl"></span>
									</label>
								</th>
								<th class="text-center">Kepada</th>
								<th class="text-center">Email</th>
								<th class="text-center">Subjek</th>
								<th class="text-center">Isi Pesan</th>
							</tr>
						</thead>
						<tbody>
							<?php 
							foreach($data_pesan->result() as $row):
								?>
								<tr style="cursor: pointer;">
									<td class="text-center">
										<label class="inline">
											<input type="checkbox" class="ace" />
											<span class="lbl"></span>
										</label>
									</td>
									<td data-id="<?= $row->id_pesan; ?>" class="text-left"><?= $row->nama_penerima ?></td>
									<td data-id="<?= $row->id_pesan; ?>" class="text-center"><?= $row->email_penerima ?></td>
									<td data-id="<?= $row->id_pesan; ?>" class="text-left"><?= $row->subjek_pesan ?></td>
									<td data-id="<?= $row->id_pesan; ?>" class="text-left"><?= $row->isi_pesan ?></td>
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">

	$(document).ready(function(){
		$('.konten-pesan table tr td').not(":first-child").on('click', function(e) {
			e.stopPropagation();
			e.preventDefault();
			var id_pesan=$(this).data('id');

			window.location = "<?php echo site_url('admin/pesan/detail_keluar/');?>"+id_pesan;
		});

		$('#tabelku').dataTable();
	});
</script>