<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Tebak_regresi extends CI_Model {
  private $pk_col = 'tebak_regresis.id';
  private $table_name = 'tebak_regresis';

  public function select(){
    $this->db->select('tebak_regresis.id');
    $this->db->select('tebak_regresis.game_id');
    $this->db->select('tebak_regresis.dwt');
    $this->db->select('tebak_regresis.wst');
    $this->db->select('tebak_regresis.act_wst');
    $this->db->select('tebak_regresis.engine_power');
    $this->db->select('tebak_regresis.act_engine_power');
    $this->db->select('tebak_regresis.type_of_engine');
    $this->db->select('tebak_regresis.act_type_of_engine');
    $this->db->select('tebak_regresis.lwt');
    $this->db->select('tebak_regresis.act_lwt');
    $this->db->select('tebak_regresis.score');
    $this->db->select('games.user_id');
    $this->db->select('games.level_id');
    $this->db->from($this->table_name);
    $this->db->join("games","games.id = tebak_regresis.game_id");
  }

  public function insert($data){
    $this->db->insert($this->table_name, $data);
    return $this->db->insert_id();
  }

  public function update($data, $id){
    return $this->db->update($this->table_name, $data, "$this->pk_col = '$id'");
  }

  public function update_by_game($data, $game_id){
    return $this->db->update($this->table_name, $data, "tebak_regresis.game_id = '$game_id'");
  }


  public function get_by_id($id){
    $this->select();
    $this->db->where("$this->pk_col = '$id'");
    $query = $this->db->get();
    print_r($query);
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

  public function generate_wst($dwt){
    $wst = 0.078 * $dwt + 1458;
    return $wst;
  }

  public function generate_engine_power($dwt){
    $engine_power = ( 7 * pow(10, -5)) * pow($dwt,2) - ( 0.54 * $dwt ) + ( 3092.8 );
    return $engine_power;
  }

  public function generate_lwt($dwt){
    $lwt = (-2 * pow(10, -5)) * pow($dwt,2) + (0.283 * $dwt) + 1655.5;
    return $lwt;
  }

  public function get_or_create_by_game($game_id){
    $query = $this->where("tebak_regresis.game_id = '$game_id'");
    if (count($query) == 0){
      $this->load->model("katalog_engine");
      $data["game_id"] = $game_id;
      $data["dwt"] = rand ( 5000 , 9999 );
      $data["act_wst"] = $this->generate_wst($data["dwt"]);
      $data["act_engine_power"] = $this->engine_power($data["dwt"]);
      $data["act_type_of_engine"] = $this->katalog_engine->get_engine($data["act_engine_power"]);
      $data["act_lwt"] = $this->generate_lwt($data["dwt"]);
      $this->insert($data);
      $query = $this->where("tebak_regresis.game_id = '$game_id'");
    }
    $tebak_regresi = $query[0];
    return $tebak_regresi;
  }

  public function calculate_score_by_game($game_id, $margin){
    $query = $this->where("tebak_regresis.game_id = '$game_id'");
    if (count($query) > 0){
      $tebak_regresi = $query[0];
      $correct = 0;

      $margin_wst = $tebak_regresi->act_wst * $margin / 100;
      $diff = $tebak_regresi->wst - $tebak_regresi->act_wst;
      if(abs($diff) < $margin_wst) $correct ++;

      $margin_engine = $tebak_regresi->act_engine_power * $margin / 100;
      $diff = $tebak_regresi->engine_power - $tebak_regresi->act_engine_power;
      if(abs($diff) < $margin_engine) $correct ++;

      if($tebak_regresi->type_of_engine == $tebak_regresi->act_type_of_engine) $correct ++;

      $margin_lwt = $tebak_regresi->act_lwt * $margin / 100;
      $diff = $tebak_regresi->lwt - $tebak_regresi->act_lwt;
      if(abs($diff) < $margin_lwt) $correct ++;

      $data["score"] = 100 * $correct/4;
      $this->update($data, $tebak_regresi->id);
      return $data["score"];
    }
    else{
      return false;
    }
  }
}
