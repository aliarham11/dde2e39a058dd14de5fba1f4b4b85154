<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Game extends CI_Model {
	private $pk_col = 'games.id';
	private $table_name = 'games';

	public function select(){
		$this->db->select('games.id');
		$this->db->select('games.user_id');
		$this->db->select('games.level_id');
		$this->db->select('games.created_at');
		$this->db->select('games.score_parts');
		$this->db->select('games.finish');
		$this->db->select('games.total_score');
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
		$result = $this->where("finish = false and user_id = '$user_id' and level_id = '$level_id'");
		return $result;
	}

	// false if game not generated
	public function finish($id){
		$game = $this->get_by_id($id);
		if ($game == null ||$game->score_parts == null){
			return false;
		}
		$this->load->model("question");
		$this->load->model("tebak_regresi");
		$questions = $this->question->where("game_id = '$id'");
		if (count($questions) == 0 || $questions[0]->score_cost == null)
		{
			return false;
		}
		else{
			$question = $questions[0];
		}
		$regresis = $this->tebak_regresi->where("game_id = '$id'");
		if (count($questions) == 0 || $questions[0]->score_cost == null)
		{
			return false;
		}
		else{
			$regresi = $regresis[0];
		}

		$_1 =  $question->score_cost;
		$_2 =  $tebak_regresi->score;
		$_3 =  $game->score_parts;

		$data["total_score"] = round(($_1 + $_2 + $_3) / 3 );
		$data["finish"] = true;
		$this->update($data, $id);
		return $data["total_score"];
	}

	public function score($level, $game_id)
	{
		$sql = 'select score_cost from questions where game_id = '.$game_id.' order by id asc limit 5 ';
		$query = $this->db->query($sql);
		return $query->result_array();
	}
}
