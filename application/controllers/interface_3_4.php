<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Interface_3_4 extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('htmllib');
		// Your own constructor code
	}

	public function index(){

			$data['interface_chart'] = '';
			$this->htmllib->add_js('pages/interface3_4.js');
			$this->load->view('plain/default_header');
			$this->load->view('interface3_4');
			$this->load->view('plain/default_footer', $data);	

	}

	public function json_operation($type=''){

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
			//Data for Interface 3 Games, load from DB or Custom Init
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

