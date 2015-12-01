<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Htmllib {

    private $js = array();
	private $css = array();

    public function __construct() {
		$this->_set_default_css();
		$this->_set_default_js();
    }
	
	private function _set_default_js()
	{
		$this->js[] = "jquery-1.11.2.min.js";
		$this->js[] = "materialize.min.js";
		$this->js[] = "prism.js";
		$this->js[] = "plugins/perfect-scrollbar/perfect-scrollbar.min.js";
		$this->js[] = "notifIt.js";
		$this->js[] = "plugins/datatables/js/jquery.dataTables.js";
		$this->js[] = "plugins/datatables/js/dataTables.tableTools.js";
		$this->js[] = "plugins.js";
		$this->js[] = "plugins/easytabs/jquery.easytabs.min.js";
		$this->js[] = "d3.v3.min.js";
		$this->js[] = "c3.min.js";
		$this->js[] = "jQuery.print.js";
		$this->js[] = "dropzone.js";
		$this->js[] = "vis.min.js";
	}
	
	private function _set_default_css()
	{
		$this->css[] = "materialize.css";
		$this->css[] = "dataTables.tableTools.css";
		$this->css[] = "c3.min.css";
		$this->css[] = "dropzone.css";
		$this->css[] = "vis.min.css";
		$this->css[] = "jquery.dataTables.min.css";
		$this->css[] = "notifIt.css";
		$this->css[] = "custom_css.css";
	}
	
	public function add_js($js)
	{
		$this->js[] = $js;	
	}
	
	public function add_css($css)
	{
		$this->css[] = $css;	
	}
	
	public function declare_js()
	{		
		$min_script = array();

		foreach ($this->js as $url) {
			$script[] = '<script type="text/javascript" src="' .base_url().'assets/js/'.$url. '"></script>';
		}

		foreach ($script as $tag_html) {
			echo $tag_html;
		}
	}
	
	public function declare_css()
	{
		$min_script = array();

		foreach ($this->css as $url) {
			$script[] = '<link rel="stylesheet" href="' .base_url().'assets/css/'.$url. '" />';
		}

		foreach ($script as $tag_html) {
			echo $tag_html;
		}
	}

}

?>