<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Interface_5 extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('htmllib');
		// Your own constructor code
	}

	public function index(){

		$data['title'] = 'Naval Game';

		$this->htmllib->add_js('pages/interface_5.js');
		$this->load->view('plain/default_header');
		$this->load->view('interface_5', $data);
		$this->load->view('plain/default_footer');
	}

	
}

