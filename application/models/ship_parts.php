<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Ship_parts extends CI_Model {
	private $pk_col = 'ship_parts.id';
	private $table_name = 'ship_parts';

	public function select(){
		$this->db->select('ship_parts.id');
		$this->db->select('ship_parts.parentId');
		$this->db->select('ship_parts.name');
		$this->db->from($this->table_name);
		return $this->db->get()->result_array();

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

	public function to_hash(){
		$parts = $this->where();
		foreach ($parts as $part) {
			$hash[$part->id] = $part;
		}
		return $hash;
	}
}
