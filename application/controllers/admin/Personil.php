<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Personil extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Site_model', 'site_model');		
		$this->load->model('admin/Personil_model', 'personil_model');		
		$this->load->model('admin/Log_model', 'log_model');
	}

	public function save()
	{
		$this->form_validation->set_rules('full_name', 'Nama Lengkap','required|strip_tags|min_length[3]');
		$this->form_validation->set_rules('email', 'Email','required|strip_tags|valid_email|min_length[3]');
		$this->form_validation->set_rules('username', 'Username','required|strip_tags|is_unique[tb_personil.username]|min_length[3]');
		$this->form_validation->set_rules('password', 'Password','required|strip_tags|min_length[6]');

		$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
		$this->form_validation->set_message('matches', '%s harus sama dengan Password Baru');

		if ($this->form_validation->run() === FALSE) {
			$this->index();
		} else {
			
			$username = $this->input->post('username', true);

			if ($this->personil_model->get_info_username($username)) {
				$status['status'] = 0;
				$status['pesan'] = 'Username sudah terdaftar';
			}else{
				$username = $username;
				$password = sha1(md5($this->input->post('password', true)));
				$full_name = $this->input->post('full_name', true);
				$email = $this->input->post('email', true);

				$password_text = $this->input->post('password', true);

				$simpan = $this->personil_model->tambah_data($username, $password, $full_name, $email);
				$kode_aktivasi = $this->get_code();
				$kirim_notifikasi = $this->send_email_notif($email, $kode_aktivasi, $full_name, $username, $password_text);

						// $this->personil_model->save_aktivasi($email, $kode_aktivasi);

				$text = $full_name." berhasil disimpan pada data Personil.";
				$this->session->set_flashdata('pesan', $text);
				redirect('admin/personil');
				
				// $text = $full_name." berhasil disimpan pada data Personil.";
				// $this->session->set_flashdata('pesan', $text);
				// redirect('admin/personil');
			}
		}
	}

	public function index()
	{
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
		$data['bc_aktif'] 			= "Personil";
		$data['title'] 				= "Personil";

		$data['data_personil']		= $this->personil_model->get_all_data();

		$this->template->load('admin/template', 'admin/personil_v', $data);
	}

	public function send_email_notif($email, $kode_aktivasi, $full_name, $username, $password_text)
	{
		$this->load->config('email');
		$this->load->library('email');
		$site = $this->site_model->get_site_data()->row_array();

		$subjek 				= "Personil Baru Pada ".$site['site_name'];
		$data['subjek'] 		= $subjek;
		$data['url_aktivasi']	= site_url('admin/aktivasi/'.$kode_aktivasi);
		$data['site_name']		= $site['site_name'];
		$data['tahun_buat'] 	= $site['tahun_buat'];
		$data['kode_aktivasi']	= $kode_aktivasi;
		$data['full_name']		= $full_name;
		$data['username']		= $username;
		$data['password']		= $password_text;
		$this->email->from($this->config->item('smtp_user'), 'admin@'.$site['site_name']);
		$this->email->to($email);

		$this->email->subject($subjek);
		$this->email->message($this->load->view('email/aktivasi_user_v', $data, TRUE));
		// $this->email->message("Email isi disini");

		if ($this->email->send()) {
			// simpan data pada db
			// $this->personil_model->save_aktivasi($email, $kode_aktivasi);
			$text = "Kode aktivasi akun telaha dikirim ke ".$email;
			$this->session->set_flashdata('pnotify', $text);
			$url = site_url('admin/personil');
			redirect($url);
		}else{
			$text = "Gagal mengirim email";
			$this->session->set_flashdata('pnotify_error', $text);
			$url = site_url('admin/personil');
			redirect($url);
		}
	}

	public function get_code()
	{
		$this->load->helper('string');
		$string = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		return substr(str_shuffle($string), 0, 43);
		// return random_string('alnum', 42);
	}

}

/* End of file Personil.php */
/* Location: ./application/controllers/admin/Personil.php */

?>