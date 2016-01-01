<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Interface_6 extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('htmllib');
		// Your own constructor code
	}

	public function index(){

		$data['title'] = 'Naval Game';

		$this->htmllib->add_js('pages/interface_6.js');
		$this->load->view('plain/default_header');
		$this->load->view('interface_6/home', $data);
		$this->load->view('plain/default_footer');	

	}

	public function tables()
	{
		$data['title'] = 'Naval Game';

		$this->htmllib->add_js('pages/interface_6_tables.js');
		$this->load->view('plain/default_header');
		$this->load->view('interface_6/tables', $data);
		$this->load->view('plain/default_footer');	
	}

	public function get_chart(){

		$data = array(
			array('id' => 1, 'parentId' => -1, 'name' => 'PRICE'),
			array('id' => 2, 'parentId' => 1, 'name' => 'Total Cost'),
			array('id' => 3, 'parentId' => 2, 'name' => 'Direct Cost'),
			array('id' => 4, 'parentId' => 2, 'name' => 'Undirect Cost'),
		);

		echo json_encode($data);
	}
	
}

