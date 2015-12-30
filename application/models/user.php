<?php defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Model {
	private $pk_col = 'users.id';
	private $table_name = 'users';

	public function select(){
		$this->db->select('users.id');
		$this->db->select('users.username');
		$this->db->select('users.password');
		$this->db->select('users.name');
		$this->db->from($this->table_name);
	}

	public function insert($data){
		$data["password"] = md5($data["password"]);
		$this->db->insert($this->table_name, $data);
		return $this->db->insert_id();
	}

	public function update($data, $id){
		if(isset($data["password"])){
			$data["password"] = md5($data["password"]);
		}
		return $this->db->update($this->table_name, $data, "$this->pk_col = '$id'");
	}

	public function auth($username, $password){
		$password = md5($password);
		$this->select();
		$this->db->where("username = '$username' and password = '$password'");
		$query = $this->db->get();
		return $query->first_row();
	}
}
