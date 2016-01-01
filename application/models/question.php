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
		$this->db->select('questions.wst');
		$this->db->select('questions.engine_power');
		$this->db->select('questions.type_of_engine');
		$this->db->select('questions.lwt');
		$this->db->select('questions.score_cost');
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
		$query = $this->where("questions.game_id = '$game_id'");
    if (count($query) == 0){
      $this->load->model("katalog_engine");
      $data["game_id"] = $game_id;
      $data["dwt"] = rand ( 5000 , 10000 );
			$data["harga_pelat"] = rand ( 8100 , 11000 );
			$data["machinery_cost"] = rand ( 500 , 550 );
			$data["construction_cost"] = rand ( 7120 , 9500 );
			$data["tukar_dolar"] = 9500;
      $data["wst"] = $this->generate_wst($data["dwt"]);
      $data["engine_power"] = $this->generate_engine_power($data["dwt"]);
      $data["type_of_engine"] = $this->katalog_engine->get_engine($data["engine_power"]);
      $data["lwt"] = $this->generate_lwt($data["dwt"]);
      $this->insert($data);
      $query = $this->where("questions.game_id = '$game_id'");
    }
    $question = $query[0];
    return $question;
	}
}
