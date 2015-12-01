<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		$this->load->view('plain/default_header');
		$this->load->view('template_soal');
		$this->load->view('plain/default_footer');
	}
	
}

