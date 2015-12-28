<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Base extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('htmllib');
		// Your own constructor code
	}

	public function index(){

		$data['rules'] = 'Ini Peraturan Permainan';

		$this->htmllib->add_js('pages/question_template.js');
		$this->load->view('plain/default_header');
		$this->load->view('question_template', $data);
		$this->load->view('plain/default_footer');
	}

	public function interface3($type=''){
		if(!$type){
			$data['interface_chart'] = '';
			$this->htmllib->add_js('pages/interface3.js');
			$this->load->view('plain/default_header');
			$this->load->view('interface3');
			$this->load->view('plain/default_footer', $data);	
		
		}
		else if($type == 'json'){

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
				array('id' => 1, 'parentId' => -1, 'name' => '- Jawab -'),
				array('id' => 2, 'parentId' => 1, 'name' => '- Jawab -'),
				array('id' => 3, 'parentId' => 2, 'name' => '- Jawab -'),
				array('id' => 4, 'parentId' => 2, 'name' => '- Jawab -'),
			);

			echo json_encode($data);
		}
		
	}

	function get_question($number=0){

		$question_text = 'Ini soal nomor '.$number;
		$question_header = 'Seputar Tanker jenis Crude Oil';
		$data = array(

			'question_header' => $question_header,
			'question_number' => $number,
			'question_text' => $question_text,
		);

		echo json_encode($data);
	}


	
}

