<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Katalog_engine extends CI_Model {
  private $engines = [1935, 2040, 2380, 2720, 3000, 3060, 3360, 3500, 3920, 4000, 4480, 4500, 5040, 5600, 6000, 6720];

  public function get_engines(){
    return $this->engines;
  }

  public function get_engine($power){
    foreach ($this->engines as $engine) {
      if ($power < $engine) return $engine;
    }
    return false;
  }


}
