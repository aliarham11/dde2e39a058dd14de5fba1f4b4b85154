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

	public function get_table_data()
	{
		$this->load->model('Interface_5_model', 'Interface_5');
		$data = $this->Interface_5->get_by_lb_number($this->input->get('label_number'));

		echo json_encode($data);
		# code...
	}

	
}

