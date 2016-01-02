<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Material_costs extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('htmllib');
		$this->load->model('question');
		$this->game_sessions = need_game();
		if ($this->game_sessions == false){
		  redirect(base_url()."games/start");
		}
		// Your own constructor code
	}

	public function index(){

		$data['title'] = 'Naval Game';
		$params["question"] = $this->question->get_or_create_by_game($this->game_sessions["game_id"]);
		if ($params["question"]->score_cost != null)
	    {
	      $this->session->set_flashdata("notice", "permainan telah berakhir");
	      redirect(base_url()."games/run");
	    }
		$this->htmllib->add_js('pages/Material_costs.js');
		$this->load->view('plain/default_header');
		$this->load->view('material_costs/home', $data);
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

