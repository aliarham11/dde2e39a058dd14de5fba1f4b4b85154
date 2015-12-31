<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Quiz_regresi extends CI_Controller {

  private $game_sessions;

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
    $params["notice"] = get_notice();
    $params["tebak_regresi"] = $this->tebak_regresi->get_or_create_by_game($this->game_sessions["game_id"]);
    if ($params["tebak_regresi"]->score != null)
    {
      $this->session->set_flashdata("notice", "permainan telah berakhir");
      redirect(base_url()."games/run");
    }
    $this->load->model('katalog_engine');
    $params["engines"] = $this->katalog_engine->get_engines();
    $this->load->view("quiz_regresi/index.php",$params);
  }

  public function submit(){
    $data["wst"] = $this->input->post("wst");
    $data["engine_power"] = $this->input->post("engine_power");
    $data["type_of_engine"] = $this->input->post("type_of_engine");
    $data["lwt"] = $this->input->post("lwt");
    $this->tebak_regresi->update_by_game($data, $this->game_sessions["game_id"]);
    if ($this->input->post("save") == "1")
    {
      $level_sessioins = need_level();
      $margin = get_margin($level_sessioins["level_id"]);
      $this->tebak_regresi->calculate_score_by_game($this->game_sessions["game_id"], $margin);
      $this->session->set_flashdata("notice", "permainan telah berakhir");
      redirect(base_url()."games/run");
    }
    else{
      redirect(base_url()."quiz_regresi/index");
    }
  }

}

