<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('htmllib');
		$this->load->model('level');
		$this->load->model('game');
		// Your own constructor code
	}

	public function user_new(){
		$params["notice"] = get_notice();
		$this->load->view('user_new',$params);
	}

	public function register(){
		$this->load->helper(array('form', 'url'));

		$this->load->library('form_validation');

		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');
		$this->form_validation->set_rules('name', 'Name', 'required');

		$data["username"] = $this->input->post("username");
		$data["password"] = $this->input->post("password");
		$data["name"] = $this->input->post("name");

		if ($this->form_validation->run())
		{
			$this->load->model("user");
			$this->user->insert($data);
			$this->session->set_flashdata("notice","Registrasi Sukses");
			redirect(base_url()."base/login");
		}
		else
		{
			
			$params["data"] = $data;
			$params["errors"] = validation_errors();
			$this->load->view('plain/default_header');
			$this->load->view('user_new',$params);
			$this->load->view('plain/default_footer');

		}
	}

	public function dashboard($value='')
	{
		// if (($level_session = need_level())){
	 //      redirect(base_url()."games/start");
	 //    }
	    $params["notice"] = get_notice();
	    $params["levels"] = $this->level->where();
	    $params['user_name'] = $this->session->userdata("user_name");

	    $this->htmllib->add_js('pages/dashboard.js');
		$this->load->view('plain/default_header');
		$this->load->view('dashboard',$params);
		$this->load->view('plain/default_footer');
	}

	public function endgame($value='')
	{
		// if (($level_session = need_level())){
	 //      redirect(base_url()."games/start");
	 //    }
	    $params["notice"] = get_notice();
	    $params["levels"] = $this->level->where();
	    $params['user_name'] = $this->session->userdata("user_name");

	    $this->htmllib->add_js('pages/endgame.js');
		$this->load->view('plain/default_header');
		$this->load->view('endgame',$params);
		$this->load->view('plain/default_footer');

		# code...
	}

	public function get_score()
	{

		$score = $this->game->score($this->input->post('level'), $this->session->userdata('game_id'));
		$data = array();
		foreach ($score as $row) {
			array_push($data, $row['score_cost']);
		}
		echo json_encode($data);
		# code...
	}
}

