<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Levels extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('htmllib');
		$this->load->model('level');
	}

	public function index(){
		$params["levels"] = $this->level->where("");
		$this->load->view('levels/index',$params);
	}

	public function level_new(){
		$params["notice"] = get_notice();
		$this->load->view('levels/level_new',$params);
	}

	public function create(){
		$this->load->helper(array('form', 'url'));

		$this->load->library('form_validation');

		$this->form_validation->set_rules('difficulty', 'Difficulty', 'required');
		$this->form_validation->set_rules('margin', 'Margin', 'required');

		$data = $this->set_level();
		
		if ($this->form_validation->run())
		{
			$this->level->insert($data);
			$this->session->set_flashdata("notice","Penambahan level sukses");
			redirect(base_url()."levels/");
		}
		else
		{
			$params["data"] = $data;
			$params["errors"] = validation_errors();
			$this->load->view('levels/level_new',$params);
		}
	}

	public function edit($id){
		$params["notice"] = get_notice();
		$params["data"] = (Array)$this->level->get_by_id($id);
		$this->load->view('levels/edit',$params);
	}

	public function update($id){
		$this->load->helper(array('form', 'url'));

		$this->load->library('form_validation');

		$this->form_validation->set_rules('difficulty', 'Difficulty', 'required');
		$this->form_validation->set_rules('margin', 'Margin', 'required');

		$data = $this->set_level();
		
		if ($this->form_validation->run())
		{
			$this->level->update($data, $id);
			$this->session->set_flashdata("notice","Perubahan level sukses");
			redirect(base_url()."levels/");
		}
		else
		{
			$data["id"] = $id;
			$params["data"] = $data;
			$params["errors"] = validation_errors();
			$this->load->view('levels/edit',$params);
		}
	}

	public function destroy($id){
		$this->level->destroy($id);
		redirect(base_url()."levels");
	}

	function set_level(){
		$data["difficulty"] = $this->input->post("difficulty");
		$data["margin"] = $this->input->post("margin");
		return $data;
	}
}

