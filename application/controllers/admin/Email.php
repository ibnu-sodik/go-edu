<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Email extends CI_Controller {

	public function index()
	{
		// load konfigurasi email
		$this->load->config("email");

		// load library email
		$this->load->library("email");

		// alamat email pengirim, alias
		$this->email->from($this->config->item("smtp_user"), "GoBlog252");
		$this->email->to("someone@example.com");

		$this->email->subject("Isi subjek pesan kalian disini");
		$this->email->message("Isi pesan kalian disini.");

		// jika terkirim tampilkan pesan
		if ($this->email->send()) {
			echo "Email Terkirim";
		}

		echo $this->email->print_debugger();	
	}

}

/* End of file Email.php */
/* Location: ./application/controllers/admin/Email.php */