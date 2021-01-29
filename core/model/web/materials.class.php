<?php
namespace Model\Web;
use Engine\Model;


class Materials extends Model {
	
	public function init() {
		$mats = $this->select('SELECT * FROM materials ORDER BY sort ASC');
		foreach ($mats as $mat) {
			$this->set($mat['alias'], $mat);
		}
	}
	
}

