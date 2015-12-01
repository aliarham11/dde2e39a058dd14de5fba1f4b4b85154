<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
require 'vendor/autoload.php';
class Welcome extends CI_Controller {

	public function index()
	{
		$this->load->view('plain/default_header');
		$this->load->view('template_soal');
		$this->load->view('plain/default_footer');
	}
	
}

