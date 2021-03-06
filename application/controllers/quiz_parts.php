<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Quiz_parts extends CI_Controller {

  private $game_sessions;

  public function __construct()
  {
    parent::__construct();
    $this->load->library('htmllib');
    $this->load->model('ship_part');
    $this->load->model('game');
    $this->load->model('tebak_part');
    $this->game_sessions = need_game();
    if ($this->game_sessions == false){
      redirect(base_url()."games/start");
    }
    // Your own constructor code
  }

  public function index()
  {
    $params["game"] = $this->game->get_by_id($this->game_sessions["game_id"]);
    $params['parts'] = $this->tebak_part->get_or_create_by_game($this->game_sessions["game_id"]);
    $this->htmllib->add_js('pages/quiz_parts.js');
    $this->load->view('plain/default_header');
    $this->load->view('quiz_parts/index', $params);
    $this->load->view('plain/default_footer');
  }

  public function knowledge(){
    $parts = $this->ship_part->where();
    $json_parts = array();
    for($i = 30; $i > -1 ; $i--){
      $part = array('id' => $parts[$i]->id, 'parentId' => isset($parts[$i]->parent_id) ? $parts[$i]->parent_id : -1, 'name' => $parts[$i]->name);
      array_push($json_parts, $part);
    }
    echo json_encode($json_parts);
  }

  public function get_question(){
    $parts = $this->tebak_part->get_or_create_by_game($this->game_sessions["game_id"]);
    $json_parts = array();
    for($i = 30; $i > -1 ; $i--){
      $part = array('id' => $parts[$i]->id, 'parentId' => isset($parts[$i]->parent_id) ? $parts[$i]->parent_id - $parts[$i]->part_id + $parts[$i]->id : -1, 'name' => $parts[$i]->answer);
      array_push($json_parts, $part);
    }
    echo json_encode($json_parts);
  }
  
  public function submit(){
    //input berupa text yang berisi nama part dengan name answer[$id]
    $answers = $this->input->post("answer");
    foreach ($answers as $key => $answer) {
      $data["answer"] = $answers[$key];
      $id = $key;
      $this->tebak_part->update($data, $id);
    }
    if ($this->input->post("save") == "1")
    {

      $this->tebak_part->calculate_score_by_game($this->game_sessions["game_id"]);
      $this->session->set_flashdata("notice", "permainan telah berakhir");
      redirect(base_url()."quiz_parts/index");
    }
    else{
      redirect(base_url()."material_costs");
      // redirect(base_url()."quiz_parts/index");
      //redirect ke permainan
    }
  }
}

