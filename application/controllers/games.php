<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Games extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->library('htmllib');
    $this->load->model('game');
    $this->load->model('level');
    // Your own constructor code
    if (need_login() == false){
      redirect(base_url()."base/login");
    }
  }

  public function chose_level(){
    if (($level_session = need_level())){
      redirect(base_url()."games/start");
    }
    $params["notice"] = get_notice();
    $params["levels"] = $this->level->where();
    $this->load->view('games/chose_level',$params);
  }

  public function start(){
    if (need_game()){
      redirect(base_url()."games/run");
    }
    $level_id = $this->input->post("level_id");
    $level = $this->level->get_by_id($level_id);
    if (count($level) == 0){
      $level_session = need_level();
      $level = $level_session["level"];
      $level_id = $level_session["level_id"];
    }
    if ($level != null)
    {
      $this->session->set_userdata("level_id",$level_id);
      $this->session->set_userdata("level",$level);
      $params["games"] = $this->game->unfinished($this->session->userdata("user_id"), $level_id);
      $this->htmllib->add_js('pages/game.js');
      $this->load->view('plain/default_header');
      $this->load->view("games/home",$params);
      $this->load->view('plain/default_footer');
    }
    else
    {
      $params["errors"] = "Unknown level";
      $params["levels"] = $this->level->where();
      $this->load->view('users/dashboard',$params);
    }
  }

  public function run(){
    $success = false;
    if (need_level() == false){
      redirect(base_url()."games/chose_level");
    }
    $params["notice"] = get_notice();
    $game_sessions = need_game();
    if ($game_sessions != false){
      $this->load->view("games/run",$params);
    }
    else{
      if ($this->input->post("game_id") != "0"){
        $game_id = $this->input->post("game_id");
        $game = $this->game->get_by_id($game_id);
      }
      else{
        $data["user_id"] = $this->session->userdata("user_id");
        $data["level_id"] = $this->session->userdata("level_id");
        $success = true;
        $game_id = $this->game->insert($data);
        $game = $this->game->get_by_id($game_id);
      }
      $this->session->set_userdata("game_id",$game_id);
      $this->session->set_userdata("game",$game);
      // $this->load->view("games/run",$params);
      echo json_encode($success);
    }
  }
}

