<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Pesan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin/Pesan_model', 'pesan_model');
		$this->load->library('upload');
		$this->load->helper('text');
	}

	public function detail_keluar($id_pesanKeluar)
	{
		date_default_timezone_set('Asia/Jakarta');
		$data['timestamp'] 			= strtotime(date('Y-m-d H:i:s'));
		$site = $this->site_model->get_site_data()->row_array();
		$data['site_title'] 		= $site['site_title'];
		$data['site_name'] 			= $site['site_name'];
		$data['site_keywords'] 		= $site['site_keywords'];
		$data['site_author'] 		= $site['site_author'];
		$data['site_logo'] 			= $site['site_logo'];
		$data['site_description'] 	= $site['site_description'];
		$data['site_favicon'] 		= $site['site_favicon'];
		$data['tahun_buat'] 		= $site['tahun_buat'];
		$data['bc_menu'] 			= "Pesan";
		$data['bc_aktif'] 			= "Detail Pesan Keluar";
		$data['title'] 				= "Pesan";

		// ambil data pesan keluar berdasarkan id
		$dataPk = $this->pesan_model->get_pk_by_id($id_pesanKeluar);
		$dataPk2 = $this->pesan_model->get_pk_by_id($id_pesanKeluar)->row();
		// echo "<pre>";
		// var_dump($dataPk);

		// ambil data pesan masuk berdasarkan tb_pesan.id_pesan = tb_pesan_keluar.id_pesanMasuk
		$dataPm = $this->pesan_model->get_pesan_by_id($dataPk2->id_pesanMasuk);
		// echo "<pre>";
		// var_dump($dataPm);

		$data['data_pm'] = $dataPm;
		$data['data_pk'] = $dataPk;

		$this->template->load('admin/template', 'admin/pesan/detail_keluar_v', $data);
	}

	public function keluar()
	{
		$data['timestamp'] 			= strtotime(date('Y-m-d H:i:s'));
		$site 						= $this->site_model->get_site_data()->row_array();
		$data['site_title'] 		= $site['site_title'];
		$data['site_name'] 			= $site['site_name'];
		$data['site_keywords'] 		= $site['site_keywords'];
		$data['site_author'] 		= $site['site_author'];
		$data['site_logo'] 			= $site['site_logo'];
		$data['site_description'] 	= $site['site_description'];
		$data['site_favicon'] 		= $site['site_favicon'];
		$data['tahun_buat'] 		= $site['tahun_buat'];
		$data['bc_aktif'] 			= "Pesan Keluar";
		$data['bc_menu'] 			= "Pesan";
		$data['title'] 				= "Pesan";


		$data['data_pesan'] 		= $this->pesan_model->get_pesan_keluar();

		$this->template->load('admin/template', 'admin/pesan/pesan_keluar_v', $data);
	}

	public function hapus_keluar($id_pesan)
	{
		$data = $this->pesan_model->get_pk_by_id($id_pesan)->row();
		$nama = $data->nama_penerima;

		$file = 'uploads/attachment/'.$data->attachment;
		unlink($file);

		$this->pesan_model->hapus_keluar($id_pesan);
		
		// 0=login, 1=logout, 2=create, 3=update, 4=delete, 5=resetPass
		$id_author = $this->session->userdata('id');
		$this->log_model->save_log($id_author, 4, 'Menghapus pesan keluar milik '.$data->email_penerima);

		$text = "Pesan keluar untuk $nama berhasil dihapus.";
		$this->session->set_flashdata('pnotify', $text);
		redirect('admin/pesan/keluar');
	}

	public function hapus($id_pesan)
	{
		$data = $this->pesan_model->get_pesan_by_id($id_pesan)->row();
		$nama = $data->nama_depan.' '.$data->nama_belakang;
		$this->pesan_model->hapus($id_pesan);
		// 0=login, 1=logout, 2=create, 3=update, 4=delete, 5=resetPass
		$id_author = $this->session->userdata('id');
		$this->log_model->save_log($id_author, 4, 'Menghapus pesan dari '.$data->alamat_email);

		$text = "Pesan dari $nama berhasil dihapus.";
		$this->session->set_flashdata('pnotify', $text);
		redirect('admin/pesan');
	}

	public function balas($id_pesan)
	{
		$this->load->helper(array('form', 'html'));

		$this->form_validation->set_rules('isi_pesan', 'Pesan', 'trim|required');
		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() === FALSE) {
			$this->detail($id_pesan);
		}else{

			// id_pesan	id_pesanMasuk	nama_penerima	email_penerima	subjek_pesan	isi_pesan	attachment	dikirm_pada	
			$id_pesanMasuk 		= sanitize($id_pesan);
			$nama_penerima 		= $this->input->post('nama_penerima', TRUE);
			$email_penerima 	= $this->input->post('email_penerima', TRUE);
			$subjek_pesan 		= $this->input->post('subjek_pesan', TRUE);
			$isi_pesan 			= $this->input->post('isi_pesan');
			
			if (!empty($_FILES['attachment']['name'])) {
				$config['upload_path'] 		= './uploads/attachment/';
				$config['allowed_types'] 	= 'gif|jpg|png|jpeg|bmp|zip|rar|pdf|docx|xlsx';
				$config['encrypt_name'] 	= TRUE;
				$config['max_size'] 		= '2000';

				$this->upload->initialize($config);

				if ($this->upload->do_upload('attachment')) {
					$file = $this->upload->data();
					$attachment = $file['file_name'];
					
					$this->pesan_model->balas($id_pesanMasuk, $nama_penerima, $email_penerima, $subjek_pesan, $isi_pesan, $attachment);

					$id_author = $this->session->userdata('id');
					$this->log_model->save_log($id_author, 2, 'Membalas pesan dari '.$email_penerima);

					$this->kirim_email($nama_penerima, $email_penerima, $subjek_pesan, $isi_pesan, $attachment);

					$text = 'Pesan balasan berhasil disimpan.';
					$this->session->set_flashdata('pnotify', $text);
					redirect('admin/pesan/keluar','refresh');

				} else {
					$text = $this->upload->display_errors('','');
					$this->session->set_flashdata('pesan_error', $text);
					redirect($this->detail($id_pesan),'refresh');
				}

			} else {
				// tanpa attachment
				$this->pesan_model->balas_no_file($id_pesanMasuk, $nama_penerima, $email_penerima, $subjek_pesan, $isi_pesan);

				$id_author = $this->session->userdata('id');
				$this->log_model->save_log($id_author, 2, 'Membalas pesan dari '.$email_penerima);

				$attachment = FALSE;
				$this->kirim_email($nama_penerima, $email_penerima, $subjek_pesan, $isi_pesan, $attachment);

				$text = 'Pesan balasan berhasil disimpan.';
				$this->session->set_flashdata('pnotify', $text);
				redirect('admin/pesan','refresh');
			}

		}
	}

	public function kirim_email($nama_penerima, $email_penerima, $subjek_pesan, $isi_pesan, $attachment)
	{
		$this->load->config('email');
		$this->load->library('email');
		$site = $this->site_model->get_site_data()->row_array();

		$data['nama_web'] 		= $site['site_name'];
		if ($site['tahun_buat'] == date('Y')) {
			$data['tahun'] = date('Y');
		}else{
			$data['tahun'] = $site['tahun_buat'].' - '.date('Y');
		}
		$data['alamat_web'] = site_url('');

		$data['nama_penerima'] 	= $nama_penerima;
		$data['subjek_pesan'] 	= $subjek_pesan;
		$data['isi_pesan'] 		= $isi_pesan;

		$this->email->from($this->config->item('smtp_user'), 'admin@'.$site['site_name']);
		$this->email->to($email_penerima);
		$this->email->subject($subjek_pesan);
		// if ($attachment == TRUE) {
		$fileAttach = base_url('uploads/attachment/'.$attachment);
		$this->email->attach($fileAttach);
		// }
		$this->email->message($this->load->view('email/pesan_v', $data, TRUE));

		if ($this->email->send()) {
			$text2 = 'Email berhasil dikirim ke '.$email_penerima;
			$this->session->set_flashdata('pesan_admin', $text2);
			$idMax = $this->db->query("SELECT MAX(id_pesan) AS 'idMax' FROM tb_pesan_keluar")->row()->idMax;
			redirect('admin/pesan/detail_keluar/'.$idMax,'refresh');
		}else{
			// echo $this->email->print_debugger();
			// die();
			$text2 = 'Gagal mengirim email ke '.$email_penerima;
			$this->session->set_flashdata('pesan_error', $text2);
			$idMax = $this->db->query("SELECT MAX(id_pesan) AS 'idMax' FROM tb_pesan_keluar")->row()->idMax;
			redirect('admin/pesan/detail_keluar/'.$idMax,'refresh');
		}

	}

	public function detail($id_pesan)
	{
		date_default_timezone_set('Asia/Jakarta');
		$data['timestamp'] 			= strtotime(date('Y-m-d H:i:s'));
		$site = $this->site_model->get_site_data()->row_array();
		$data['site_title'] 		= $site['site_title'];
		$data['site_name'] 			= $site['site_name'];
		$data['site_keywords'] 		= $site['site_keywords'];
		$data['site_author'] 		= $site['site_author'];
		$data['site_logo'] 			= $site['site_logo'];
		$data['site_description'] 	= $site['site_description'];
		$data['site_favicon'] 		= $site['site_favicon'];
		$data['tahun_buat'] 		= $site['tahun_buat'];
		$data['bc_menu'] 			= "Pesan";
		$data['bc_aktif'] 			= "Detail Pesan Masuk";
		$data['title'] 				= "Pesan";

		$data['data_pesan'] 		= $this->pesan_model->get_pesan_by_id($id_pesan);
		$this->pesan_model->dibaca($id_pesan);
		$data['form_action']		= site_url('admin/pesan/balas/'.$id_pesan);

		$this->template->load('admin/template', 'admin/pesan/detail_v', $data);
	}

	public function index()
	{
		$data['timestamp'] 			= strtotime(date('Y-m-d H:i:s'));
		$site 						= $this->site_model->get_site_data()->row_array();
		$data['site_title'] 		= $site['site_title'];
		$data['site_name'] 			= $site['site_name'];
		$data['site_keywords'] 		= $site['site_keywords'];
		$data['site_author'] 		= $site['site_author'];
		$data['site_logo'] 			= $site['site_logo'];
		$data['site_description'] 	= $site['site_description'];
		$data['site_favicon'] 		= $site['site_favicon'];
		$data['tahun_buat'] 		= $site['tahun_buat'];
		$data['bc_aktif'] 			= "Pesan Masuk";
		$data['bc_menu'] 			= "Pesan";
		$data['title'] 				= "Pesan";


		$data['data_pesan'] 		= $this->pesan_model->get_all_data();
		$jumlah = $this->pesan_model->get_unread_pesan()->num_rows();
		if ($jumlah == 0) {
			$data['sm_text'] = "";
		}else{
			$data['sm_text'] = $jumlah." pesan belum dibaca.";
		}

		$this->template->load('admin/template', 'admin/pesan/data_v', $data);
		
	}

	public function download_attachment($id_pesan)
	{
		$data 		= $this->pesan_model->get_pk_by_id($id_pesan)->row();

		$file 		= $data->attachment; 
		$file 		= urldecode($file);
		$location 	= 'uploads/attachment/';
		if(preg_match('/^[^.][-a-z0-9_.]+[a-z]$/i', $file)){
			$filepath = $location . $file;

			if(file_exists($filepath)) {
				header('Content-Description: File Transfer');
				header('Content-Type: application/octet-stream');
				header('Content-Disposition: attachment; filename="'.basename($filepath).'"');
				header('Expires: 0');
				header('Cache-Control: must-revalidate');
				header('Pragma: public');
				header('Content-Length: ' . filesize($filepath));
				flush();
				readfile($filepath);
				die();
			} else {
				$url = site_url('admin/pesan/detail_keluar/'.$id_pesan);
				$text = 'File tidak ditemukan';
				$this->session->set_flashdata('pesan_error', $text);
				redirect($url,'refresh');
				// http_response_code(404);
				// die();
			}
		} else {
			// die("Invalid file name!");
			$url = site_url('admin/pesan/detail_keluar/'.$id_pesan);
			$text = 'Tipe File tidak dikenal';
			$this->session->set_flashdata('pesan_error', $text);
			redirect($url,'refresh');
		}
	}

}

/* End of file Pesan.php */
/* Location: ./application/controllers/admin/Pesan.php */

?>