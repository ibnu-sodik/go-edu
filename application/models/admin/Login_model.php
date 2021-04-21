<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_Model {

	function validasi($username)
	{
		$result = $this->db->query("SELECT * FROM tb_personil WHERE (email = '$username' OR username='$username')");
		return $result;
	}

}

/* End of file Login_model.php */
/* Location: ./application/models/admin/Login_model.php */ ?>