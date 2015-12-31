<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Tebak_part extends CI_Model {
  private $pk_col = 'answers.id';
  private $table_name = 'answers';

  public function select(){
    $this->db->select('tebak_pats.id');
    $this->db->select('tebak_pats.question_id');
    $this->db->select('tebak_pats.part_id');
    $this->db->select('tebak_pats.answer');
    $this->db->select('ship_parts.name');
    $this->db->from($this->table_name);
    $this->db->join("ship_parts", "ship_parts.id = tebak_pats.part_id");
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

  public function answer_parts($question_id){
    $answers = $this->where("answers.question_id = '$question_id'");
    foreach ($answers as $answer) {
      $answer_parts[$answer->parts_id] = $answer;
    }
    return $answer_parts;
  }
}
