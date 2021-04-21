<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Personil_model extends CI_Model {

	public function get_all_data()
	{
		$query = $this->db->query("SELECT * FROM tb_personil");
		return $query;
	}

	public function get_max_id()
	{
		$query = $this->db->query("SELECT MAX(id) AS id_personil FROM tb_personil");
		return $query;
	}

	public function tambah_data($username, $password, $full_name, $email)
	{
		$object = array(
			'full_name' => $full_name, 
			'email' 	=> $email, 
			'username' 	=> $username, 
			'password' 	=> $password
		);
		$this->db->insert('tb_personil', $object);
	}

	function get_info_username($username)
	{
		$this->db->where('username',$username);
		$this->db->limit(1);
		$query = $this->db->get('tb_personil');
		return ($query->num_rows() > 0) ? $query->row() : FALSE;
	}

}

/* End of file Personil_model.php */
/* Location: ./application/models/admin/Personil_model.php */

?>