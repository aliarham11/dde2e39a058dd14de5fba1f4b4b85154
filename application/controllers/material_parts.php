<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Material_parts extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('htmllib');
		$this->load->model('game');
		$this->game_sessions = need_game();
		if ($this->game_sessions == false){
		  redirect(base_url()."games/start");
		}
		// Your own constructor code
	}

	public function index(){

			$data['title'] = 'Naval Game';
			$params["game"] = $this->game->where('id = '.$this->game_sessions["game_id"]);
			if ($params["game"][0]->score_parts != null)
		    {
		      $this->session->set_flashdata("notice", "permainan telah berakhir");
		      redirect(base_url()."games/run");
		    }
			$data['interface_chart'] = '';
			$this->htmllib->add_js('pages/material_parts.js');
			$this->load->view('plain/default_header');
			$this->load->view('material_parts/home', $data);
			$this->load->view('plain/default_footer', $data);	

	}

	public function json_operation($type=''){
		// $this->load->model('ship_parts','ship');
		if($type == 'json'){

			//Data for Interface 3, load from DB or Custom Init
			$data = array(
				array('id' => 1, 'parentId' => -1, 'name' => 'PRICE'),
				array('id' => 2, 'parentId' => 1, 'name' => 'Total Cost'),
				array('id' => 3, 'parentId' => 2, 'name' => 'Direct Cost'),
				array('id' => 4, 'parentId' => 2, 'name' => 'Undirect Cost'),
			);

			echo json_encode($data);
		}
		else if($type == 'json_games'){
			
			//Data for Interface 3, load from DB or Custom Init
			$data = array(
				array('id' => 1, 'parentId' => -1, 'jawaban' => '- Jawab -'),
				array('id' => 2, 'parentId' => 1, 'jawaban' => '- Jawab -'),
				array('id' => 3, 'parentId' => 2, 'jawaban' => '- Jawab -'),
				array('id' => 4, 'parentId' => 2, 'jawaban' => '- Jawab -'),
			);

			echo json_encode($data);
		}

		else if($type == 'json_answer'){
			$true_answers = array(
				array('id' => 1, 'answer' => 'price'),
				array('id' => 2, 'answer' => 'total cost'),
				array('id' => 3, 'answer' => 'direct cost'),
				array('id' => 4, 'answer' => 'undirect cost'),
			);

			$id = $this->input->get('id');
			$answer = $this->input->get('answer');
			$result = 'Jawaban Salah';

			foreach ($true_answers as $key) {
				if($key['id'] == $id && $key['answer'] == $answer){
					$result = 'Jawaban Benar';
				}
			}

			echo json_encode($result);

		}
	}
	
}

