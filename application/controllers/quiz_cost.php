<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Quiz_cost extends CI_Controller {

  private $game_sessions;

  public function __construct()
  {
    parent::__construct();
    $this->load->library('htmllib');
    $this->load->model('question');
    $this->load->model('answer');
    $this->load->model('score_cost_summary', 'summary');
    $this->game_sessions = need_game();
    if ($this->game_sessions == false){
      redirect(base_url()."games/start");
    }
    // Your own constructor code
  }

  public function index(){
    $level_sessions = need_level();
    $params["notice"] = get_notice();
    // var_dump($this->session->userdata("game_id"));
    // exit();
    $params["question"] = $this->question->get_or_create_by_game($this->game_sessions["game_id"]);
    $params["answers"] = $this->answer->get_or_create_by_question($params["question"]->id);
    $params["margin_percentage"] = get_margin($level_sessions["level_id"]);
    $game = $this->question->where("game_id = '".$this->game_sessions["game_id"]."'");
    $params["playing"] = count($game);
    $this->load->view('plain/default_header');
    $this->load->view("quiz_cost/index",$params);
    $this->load->view('plain/default_footer');
  }

  public function submit(){
    $question = $this->question->get_or_create_by_game($this->game_sessions["game_id"]);
    $estimate = $this->input->post("estimate");
    for($i = 1; $i < 32; $i++){
      if(isset($estimate[$i])){
        $data["estimate"] = $estimate[$i];
        $part_id = $i;
        $this->answer->update_by_question($data, $question->id, $part_id);
      }
    }
    if ($this->input->post("save") == "1")
    {
      $level_sessions = need_level();
      $margin = get_margin($level_sessions["level_id"]);
      $data["total_score"] = $this->answer->calculate_score_by_questions($question->id, $margin);
      $data["game_id"] = $this->game_sessions["game_id"];
      $data["timestamp"] = $date = date('m/d/Y h:i:s a', time());
      // $this->summary->insert($data);
      $this->session->set_flashdata("notice", "permainan telah berakhir");
      redirect(base_url()."quiz_cost/index");
      //redirect(base_url()."games/run");
    }
    else{
      redirect(base_url()."users/endgame");
      // redirect(base_url()."quiz_cost/index");
    }
  }

  public function create_more(){
    $game = $this->question->where("game_id = '".$this->game_sessions["game_id"]."'");
    if(count($game) < 5) {
      $this->question->create_more_by_game($this->game_sessions["game_id"]);
      redirect(base_url()."quiz_cost/index");
    }
    else{
      redirect(base_url()."users/endgame");
    }
  }

}

