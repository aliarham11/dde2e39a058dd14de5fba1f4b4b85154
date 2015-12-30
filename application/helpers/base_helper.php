<?php
	function get_CI(){
		$CI =& get_instance();
		return $CI;
	}

	function get_notice(){
		$CI =& get_CI();
		return $CI->session->flashdata("notice");
	}

	function get_alert(){
		$CI =& get_CI();
		return $CI->session->flashdata("alert");
	}

	function get_margin($id){
		$CI =& get_CI();
		$CI->load->model("level");
		return $CI->level->get_margin($id);
	}
?>