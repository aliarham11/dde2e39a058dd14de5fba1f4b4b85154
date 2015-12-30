<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Level extends CI_Model {
	private $pk_col = 'levels.id';
	private $table_name = 'levels';

	public function select(){
		$this->db->select('levels.id');
		$this->db->select('levels.difficulty');
		$this->db->select('levels.margin');
		$this->db->from($this->table_name);
	}

	public function insert($data){
		$this->db->insert($this->table_name, $data);
		return $this->db->insert_id();
	}

	public function update($data, $id){
		return $this->db->update($this->table_name, $data, "$this->pk_col = '$id'");
	}

	public function destroy($id){
		$this->db->where($this->pk_col, $id);
		return $this->db->delete($this->table_name);
	}

	public function get_margin($id){
		$row = $this->get_by_id($id);
		return $row->margin;
	}

	public function get_by_id($id){
		$this->select();
		$this->db->where("$this->pk_col = '$id'");
		$query = $this->db->get();
		return $query->first_row();
	}

	public function where($query = false){
		$this->select();
		if ($query){
			$this->db->where("$query");
		}
		$query = $this->db->get();
		return $query->result();
	}
}
