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

	public function login(){
		if(need_login()){
			redirect(base_url()."users/dashboard");
		}
		$params["alert"] = get_alert();
		$this->load->view('plain/default_header');
		$this->load->view("login",$params);
		$this->load->view('plain/default_footer');
	}

	public function logout(){
		$this->session->unset_userdata("user_id");
		$this->session->unset_userdata("level_id");
		$this->session->unset_userdata("level");
		$this->session->unset_userdata("game_id");
		$this->session->unset_userdata("game");
		redirect(base_url()."base/login");
	}

	public function create_session(){
		if(need_login()){
			redirect(base_url()."base/logout");
		}
		$this->load->library('form_validation');

		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if ($this->form_validation->run())
		{
			$this->load->model("user");
			$user = $this->user->auth($this->input->post("username"), $this->input->post("password"));
			if (count($user) > 0){
				$this->session->set_userdata("user_id",$user->id);
				$this->session->set_userdata("user_name",$user->username);
				redirect(base_url()."users/dashboard");
			}
			else{
				$this->session->set_flashdata("alert","Username dan password tidak cocok");
				redirect(base_url()."base/login");
			}
		}
		else
		{
			$this->session->set_flashdata("alert",validation_errors());
			redirect(base_url()."base/login");
		}
	}
}

