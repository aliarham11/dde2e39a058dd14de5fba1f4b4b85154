<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Material_regresi extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('htmllib');
		$this->load->model('tebak_regresi');
		$this->game_sessions = need_game();
		if ($this->game_sessions == false){
		  redirect(base_url()."games/start");
		}
		// Your own constructor code
	}

	public function index(){

		$data['title'] = 'Naval Game';
		$params["notice"] = get_notice();
	    $params["tebak_regresi"] = $this->tebak_regresi->get_or_create_by_game($this->game_sessions["game_id"]);
	    // if ($params["tebak_regresi"]->score != null)
	    // {
	    //   $this->session->set_flashdata("notice", "permainan telah berakhir");
	    //   redirect(base_url()."games/run");
	    // }

		$this->htmllib->add_js('pages/material_regresi.js');
		$this->load->view('plain/default_header');
		$this->load->view('material_regresi/home', $data);
		$this->load->view('plain/default_footer');	

	}

	public function tables()
	{
		$data['title'] = 'Naval Game';

		$this->htmllib->add_js('pages/material_regresi_tables.js');
		$this->load->view('plain/default_header');
		$this->load->view('material_regresi/tables', $data);
		$this->load->view('plain/default_footer');	
	}

	public function get_chart(){

		$data = array(
			array('id' => 1, 'parentId' => -1, 'name' => 'PRICE'),
			array('id' => 2, 'parentId' => 1, 'name' => 'Total Cost'),
			array('id' => 3, 'parentId' => 2, 'name' => 'Direct Cost'),
			array('id' => 4, 'parentId' => 2, 'name' => 'Undirect Cost'),
			array('id' => 5, 'parentId' => 3, 'name' => 'Hull Part'),
			array('id' => 19, 'parentId' => 3, 'name' => 'Machinery Part'),
			array('id' => 6, 'parentId' => 3, 'name' => 'Electric Part'),
			array('id' => 7, 'parentId' => 3, 'name' => 'Construction and Installation Cost'),
			array('id' => 8, 'parentId' => 3, 'name' => 'Launching and Testing'),
			array('id' => 9, 'parentId' => 3, 'name' => 'Inspection and Survei'),
			array('id' => 10, 'parentId' => 4, 'name' => 'Design Cost'),
			array('id' => 11, 'parentId' => 4, 'name' => 'Insurrance Cost'),
			array('id' => 12, 'parentId' => 4, 'name' => 'Other Miscellaneous Cost'),
			array('id' => 13, 'parentId' => 5, 'name' => 'WST'),
			array('id' => 14, 'parentId' => 19, 'name' => 'Engine Power Used'),
			array('id' => 15, 'parentId' => 6, 'name' => 'Hull Part Cost'),
			array('id' => 16, 'parentId' => 7, 'name' => 'LWT'),
			array('id' => 17, 'parentId' => 13, 'name' => 'DWT'),
			array('id' => 18, 'parentId' => 14, 'name' => 'DWT'),
		);

		echo json_encode($data);
	}
	
}

