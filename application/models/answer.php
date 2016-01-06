<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Answer extends CI_Model {
	private $pk_col = 'answers.id';
	private $table_name = 'answers';

	public function select(){
		$this->db->select('answers.id');
		$this->db->select('answers.question_id');
		$this->db->select('answers.part_id');
		$this->db->select('answers.actual');
		$this->db->select('answers.estimate');
		$this->db->select('ship_parts.name');
		$this->db->from($this->table_name);
		$this->db->join("ship_parts", "ship_parts.id = answers.part_id");
	}

	public function insert($data){
		$this->db->insert($this->table_name, $data);
		return $this->db->insert_id();
	}

	public function update($data, $id){
		return $this->db->update($this->table_name, $data, "$this->pk_col = '$id'");
	}

	public function update_by_question($data, $question_id, $part_id){
		return $this->db->update($this->table_name, $data, "question_id = '$question_id' and part_id = '$part_id'");
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

	public function get_or_create_by_question($question_id){
		$answer_parts = $this->answer_parts($question_id);
    if (count($answer_parts) == 0){
      $this->load->model("ship_part");
      $ship_parts = $this->ship_part->where();
      foreach ($ship_parts as $ship_part) {
      	$data["question_id"] = $question_id;
      	$data["part_id"] = $ship_part->id;
	      $data["actual"] = $this->get_value($ship_part->id, $question_id);
	      $this->insert($data);
      }
      $answer_parts = $this->answer_parts($question_id);
    }
    return $answer_parts;
	}

	public function where($query = false){
		$this->select();
		if ($query){
			$this->db->where("$query");
		}
		$query = $this->db->get();
		return $query->result();
	}

	public function calculate_score_by_questions($question_id, $margin_percentage){
		$answer_parts = $this->answer_parts($question_id);
    if (count($answer_parts) > 0){
      $correct = 0;
    	foreach ($answer_parts as $answer) {
    		if($answer->actual == null) $correct++;
    		else
    		{
	    		$margin = $answer->actual * $margin_percentage / 100;
	    		$diff = $answer->actual - $answer->estimate;
	      	if(abs($diff) < $margin) $correct ++;
      	}
    	}
      $data["score_cost"] = 100 * $correct / 31;
      $this->load->model("question");
      $this->question->update($data, $question_id);
      return $data["score_cost"];
    }
    else{
      return false;
    }
  }

	public function answer_parts($question_id){
		$answers = $this->where("answers.question_id = '$question_id'");
		$parts = [];
		foreach ($answers as $answer) {
			$parts[$answer->part_id] = $answer;
		}
		return $parts;
	}

	public function set_by_driving_param($driving_param, $percentage){
		return $driving_param * $percentage;
	}

	public function set_steel($question_id){
		$this->load->model("question");
		$question = $this->question->get_by_id($question_id);
		$wst_kg = $question->wst * 1000;
		$value = $wst_kg *($question->harga_pelat / $question->tukar_dolar) * 1 / 0.61;
		return $value;
	}

	public function set_populsion($question_id){
		$this->load->model("question");
		$question = $this->question->get_by_id($question_id);
		$value =($question->type_of_engine * $question->machinery_cost) * 1/0.79;
		return $value;
	}

	public function set_consumable($question_id){
		$this->load->model("question");
		$question = $this->question->get_by_id($question_id);
		$lwt_kg = $question->lwt * 1000;
		$value =($lwt_kg * $question->construction_cost) / $question->tukar_dolar;
		return $value;
	}

	public function set_inspection($question_id){
		$this->load->model("question");
		$sum = 0;
		$answers = $this->where("part_id IN (7, 13, 19) and question_id = '$question_id'");
		foreach ($answers as $answer) {
			$sum += $answer->actual;
		}
		$value = (0.02 * $sum);
		return $value;
	}

	public function get_value($part_id, $question_id){
		switch ($part_id) {
			case 1:
				return $this->set_steel($question_id);
				break;
			case 2:
				$query = $this->where("part_id = 1 and question_id = '$question_id'");
				$driving_param = $query[0];
				return $this->set_by_driving_param($driving_param->actual, 0.5);
				break;
			case 3:
				$query = $this->where("part_id = 1 and question_id = '$question_id'");
				$driving_param = $query[0];
				return $this->set_by_driving_param($driving_param->actual, 0.35);
				break;
			case 4:
				$query = $this->where("part_id = 1 and question_id = '$question_id'");
				$driving_param = $query[0];
				return $this->set_by_driving_param($driving_param->actual, 0.10);
				break;
			case 5:
				$query = $this->where("part_id = 1 and question_id = '$question_id'");
				$driving_param = $query[0];
				return $this->set_by_driving_param($driving_param->actual, 0.10);
				break;
			case 6:
				$query = $this->where("part_id = 1 and question_id = '$question_id'");
				$driving_param = $query[0];
				return $this->set_by_driving_param($driving_param->actual, 0.025);
				break;
			case 7:
				$query = $this->where("part_id < 7 and question_id = '$question_id'");
				$sum = 0;
				foreach ($query as $row) {
					$sum += $row->actual;
				}
				return $sum;
				break;
			case 8:
				return $this->set_populsion($question_id);
				break;
			case 9:
				$query = $this->where("part_id = 8 and question_id = '$question_id'");
				$driving_param = $query[0];
				return $this->set_by_driving_param($driving_param->actual, 0.33);
				break;
			case 10:
				$query = $this->where("part_id = 8 and question_id = '$question_id'");
				$driving_param = $query[0];
				return $this->set_by_driving_param($driving_param->actual, 0.375);
				break;
			case 11:
				$query = $this->where("part_id = 8 and question_id = '$question_id'");
				$driving_param = $query[0];
				return $this->set_by_driving_param($driving_param->actual, 0.167);
				break;
			case 12:
				$query = $this->where("part_id = 8 and question_id = '$question_id'");
				$driving_param = $query[0];
				return $this->set_by_driving_param($driving_param->actual, 0.042);
				break;
			case 13:
				$query = $this->where("part_id > 7 and part_id < 13 and question_id = '$question_id'");
				$sum = 0;
				foreach ($query as $row) {
					$sum += $row->actual;
				}
				return $sum;
				break;
			case 14:
				return null;
				break;
			case 15:
				return null;
				break;
			case 16:
				return null;
				break;
			case 17:
				return null;
				break;
			case 18:
				return null;
				break;
			case 19:
				$query = $this->where("part_id = 7 and question_id = '$question_id'");
				$driving_param = $query[0];
				return $this->set_by_driving_param($driving_param->actual, 0.169);
				break;
			case 20:
				return $this->set_consumable($question_id);
				break;
			case 21:
				$query = $this->where("part_id = 20 and question_id = '$question_id'");
				$row = $query[0];
				return $row->actual;
				break;
			case 22:
				return $this->set_inspection($question_id);
				break;
			case 23:
				$query = $this->where("part_id = 22 and question_id = '$question_id'");
				$row = $query[0];
				return $row->actual * 1 / 1.5;
				break;
			case 24:
				$query = $this->where("part_id IN (7, 13, 19, 21, 22, 23) and question_id = '$question_id'");
				$sum = 0;
				foreach ($query as $row) {
					$sum += $row->actual;
				}
				return $sum;
				break;
			case 25:
				$query = $this->where("part_id = 24 and question_id = '$question_id'");
				$row = $query[0];
				return 0.02 * $row->actual;
				break;
			case 26:
				$query = $this->where("part_id = 24 and question_id = '$question_id'");
				$row = $query[0];
				return 0.018 * $row->actual;
				break;
			case 27:
				$query = $this->where("part_id = 24 and question_id = '$question_id'");
				$row = $query[0];
				return 0.08 * $row->actual;
				break;
			case 28:
				$query = $this->where("part_id IN (25, 26, 27) and question_id = '$question_id'");
				$sum = 0;
				foreach ($query as $row) {
					$sum += $row->actual;
				}
				return $sum;
				break;
			case 29:
				$query = $this->where("part_id IN (24, 28) and question_id = '$question_id'");
				$sum = 0;
				foreach ($query as $row) {
					$sum += $row->actual;
				}
				return 0.05 * $sum;
				break;
			case 30:
				$query = $this->where("part_id IN (24, 28) and question_id = '$question_id'");
				$sum = 0;
				foreach ($query as $row) {
					$sum += $row->actual;
				}
				return $sum;
				break;
			case 31:
				$query = $this->where("part_id IN (29, 30) and question_id = '$question_id'");
				$sum = 0;
				foreach ($query as $row) {
					$sum += $row->actual;
				}
				return $sum;
				break;

			default:
				return null;
				break;
		}
	}
}
