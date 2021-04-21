<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Sosmed_model extends CI_Model {

	public function update_sosmed($id_sosmed, $nama_sosmed, $link_sosmed, $ikon_sosmed)
	{
		$object = array(
			'nama_sosmed' 		=> $nama_sosmed, 
			'link_sosmed' 		=> $link_sosmed, 
			'ikon_sosmed' 		=> $ikon_sosmed
		);
		$this->db->where('id_sosmed', $id_sosmed);
		$this->db->update('tb_sosmedWeb', $object);
	}

	public function simpan_sosmed($nama_sosmed, $link_sosmed, $ikon_sosmed)
	{
		$object = array(
			'nama_sosmed' 		=> $nama_sosmed, 
			'link_sosmed' 		=> $link_sosmed, 
			'ikon_sosmed' 		=> $ikon_sosmed
		);
		$this->db->insert('tb_sosmedWeb', $object);
	}

	public function get_data()
	{
		$this->db->select('*');
		$this->db->from('tb_sosmedWeb');
		$query = $this->db->get();
		return $query;
	}

}

/* End of file Sosmed_model.php */
/* Location: ./application/models/admin/Sosmed_model.php */

 ?>