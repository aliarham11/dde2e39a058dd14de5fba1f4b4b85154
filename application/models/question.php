<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Question extends CI_Model {
	private $pk_col = 'questions.id';
	private $table_name = 'questions';

	public function select(){
		$this->db->select('questions.id');
		$this->db->select('questions.game_id');
		$this->db->select('questions.dwt');
		$this->db->select('questions.harga_pelat');
		$this->db->select('questions.machinery_cost');
		$this->db->select('questions.construction_cost');
		$this->db->select('questions.tukar_dolar');
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

	public function question_number($number){
		$parts = $this->where();
		return $parts[$number];
	}
}
