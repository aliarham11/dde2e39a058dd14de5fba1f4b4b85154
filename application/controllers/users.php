<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('htmllib');
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
			redirect(base_url()."users/user_new");
		}
		else
		{
			$params["data"] = $data;
			$params["errors"] = validation_errors();
			$this->load->view('user_new',$params);
		}
	}
}

