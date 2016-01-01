<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Tebak_part extends CI_Model {
  private $pk_col = 'tebak_parts.id';
  private $table_name = 'tebak_parts';

  public function select(){
    $this->db->select('tebak_parts.id');
    $this->db->select('tebak_parts.game_id');
    $this->db->select('tebak_parts.part_id');
    $this->db->select('ship_parts.parent_id');
    $this->db->select('tebak_parts.answer');
    $this->db->select('ship_parts.name');
    $this->db->from($this->table_name);
    $this->db->join("ship_parts", "ship_parts.id = tebak_parts.part_id");
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

  public function get_or_create_by_game($game_id){
    $parts = $this->where("game_id = '$game_id'");
    if (count($parts) == 0){
      $this->load->model("ship_part");
      $ship_parts = $this->ship_part->where();
      foreach ($ship_parts as $ship_part) {
        $data["game_id"] = $game_id;
        $data["part_id"] = $ship_part->id;
        $this->insert($data);
      }
      $parts = $this->where("game_id = '$game_id'");
    }
    return $parts;
  }

  public function calculate_score_by_game($game_id){
    $parts = $this->where("game_id = '$game_id'");
    if (count($parts) > 0){
      $correct = 0;
      strtolower("Hello WORLD.");
      foreach ($parts as $part) {
        if(strtolower($part->name) == strtolower($part->answer)) $correct ++;
      }
      $data["score_parts"] = 100 * $correct / 31;
      $this->load->model("game");
      $this->game->update($data, $game_id);
      return $data["score_parts"];
    }
    else{
      return false;
    }
  }
}
