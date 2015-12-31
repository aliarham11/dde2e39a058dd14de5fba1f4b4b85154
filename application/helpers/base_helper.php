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

	function need_login(){
		$CI =& get_CI();
		return $CI->session->userdata("user_id") != null ? $CI->session->userdata("user_id") : false;
	}

	function need_level(){
		$CI =& get_CI();
		if ($CI->session->userdata("level_id") != null && $CI->session->userdata("level") != null){
			$data["level_id"] = $CI->session->userdata("level_id");
			$data["level"] = $CI->session->userdata("level");
			return $data;
		}
		return false;
	}

	function need_game(){
		$CI =& get_CI();
		if ($CI->session->userdata("game_id") != null && $CI->session->userdata("game") != null){
			$data["game_id"] = $CI->session->userdata("game_id");
			$data["game"] = $CI->session->userdata("game");
			return $data;
		}
		return false;
	}
?>