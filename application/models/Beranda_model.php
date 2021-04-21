<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Beranda_model extends CI_Model {

	public function get_fasilitas()
	{
		$query = $this->db->query("SELECT * FROM tb_fasilitas ORDER BY nama_fasilitas ASC");
		return $query;
	}

	public function get_sambutan()
	{
		$query = $this->db->query("SELECT * FROM tb_sambutan");
		return $query;
	}

	public function get_berita($limit)
	{
		$query = $this->db->query("SELECT tb_berita.*, DATE_FORMAT(berita_postdate, '%d') AS tanggal, DATE_FORMAT(berita_postdate, '%M') AS bulan FROM tb_berita ORDER BY id_berita DESC LIMIT $limit");
		return $query;
	}

	public function get_agenda($limit)
	{
		$query = $this->db->query("SELECT tb_agenda.*, DATE_FORMAT(tgl_pelaksanaan, '%d') AS tanggal, DATE_FORMAT(tgl_pelaksanaan, '%M') AS bulan FROM tb_agenda WHERE arsip = '0' ORDER BY id_agenda DESC LIMIT $limit");
		return $query;
	}

	public function get_banner()
	{
		$query = $this->db->query("SELECT * FROM tb_banner ORDER BY status_aktif DESC ");
		return $query;
	}

	public function get_artikel($limit)
	{
		$query = $this->db->query("SELECT * FROM tb_artikel ORDER BY id_artikel DESC LIMIT $limit");
		return $query;
	}

}

/* End of file Beranda_model.php */
/* Location: ./application/models/Beranda_model.php */

 ?>