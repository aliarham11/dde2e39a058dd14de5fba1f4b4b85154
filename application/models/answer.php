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
    if (count($query) == 0){
      $this->load->model("ship_part");
      $ship_parts = $this->ship_part->where();
      foreach ($ship_parts as $ship_part) {
      	$data["question_id"] = $question_id;
      	$data["part_id"] = $ship_part->id;
	      $data["actual"] = $this->get_value($ship_part->id, $question_id);
	      $this->insert($data);
      }
      $answer_parts = $this->where($question_id);
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

	public function answer_parts($question_id){
		$answers = $this->where("answers.question_id = '$question_id'");
		foreach ($answers as $answer) {
			$answer_parts[$answer->parts_id] = $answer;
		}
		return $answer_parts;
	}

	public function set_by_driving_param($driving_param, $percentage){
		return $driving_param * $percentage;
	}

	public function get_value($part_id, $question_id){
		switch ($part_id) {
			case 1:
				$value = $this->set_by_driving_param();
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
				return $this->set_by_driving_param($driving_param->actual, 0.25);
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
				return $this->set_by_driving_param($driving_param->actual, 0.42);
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
				# code...
				break;
			case 21:
				# code...
				break;
			case 22:
				# code...
				break;
			case 23:
				# code...
				break;
			case 24:
				# code...
				break;
			case 25:
				# code...
				break;
			case 26:
				# code...
				break;
			case 27:
				# code...
				break;
			case 28:
				# code...
				break;
			case 29:
				# code...
				break;
			case 30:
				# code...
				break;
			case 31:
				# code...
				break;

			default:
				# code...
				break;
		}
	}
}
