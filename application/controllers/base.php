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

