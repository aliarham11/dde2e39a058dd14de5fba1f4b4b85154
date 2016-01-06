<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Intro extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('htmllib');
		// Your own constructor code
	}

	public function index(){

		$this->htmllib->add_js('pages/intro.js');
		$this->load->view('plain/default_header');
		$this->load->view('intro');
		$this->load->view('plain/default_footer');
	}


	
}

