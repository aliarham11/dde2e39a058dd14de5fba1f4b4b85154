<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Game extends CI_Model {
	private $pk_col = 'games.id';
	private $table_name = 'games';

	public function select(){
		$this->db->select('games.id');
		$this->db->select('games.parent_id');
		$this->db->select('games.name');
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

	public function unfinished($user_id, $level_id){
		$query = $this->where("finish = false and user_id = '$user_id' and level_id = '$level_id'");
		return $query->first_row();
	}
}
