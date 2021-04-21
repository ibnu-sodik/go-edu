<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Logout extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->load->model('admin/Log_model', 'log_model');
	}

	function index()
	{
		// 0=login, 1=logout, 2=create, 3=update, 4=delete
		$id_user = $this->session->userdata('id');
		$this->log_model->save_log($id_user, 1, 'Logout Website');
		$pesan = 'Berhasil Logout.!';
		$this->session->set_flashdata('toast', $pesan);
		$this->session->sess_destroy();
		$url = base_url('admin');
		redirect($url);
	}
}

/* End of file Logout.php */
/* Location: ./application/controllers/admin/Logout.php */

?>