<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Interface_5_model extends CI_Model {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		// Your own constructor code
	}

	public function get_by_lb_number($lb_number){

		$query = $this->db->get_where('interface_5', array('label_number' => $lb_number));
		return $query->result_array();

	}
}
