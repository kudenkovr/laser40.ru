<?php
namespace Model\Web;
use Engine\Model;


class Index extends Model {
	
	public function init() {
		$registry = $this->select('SELECT `key`, `value` FROM registry WHERE block_id=0');
		foreach ($registry as $field) {
			$this->set($field['key'], $field['value']);
		}
		$blocks = $this->select('SELECT * FROM blocks WHERE enabled=1 ORDER BY sort ASC');
		foreach ($blocks as &$block) {
			$params = $this->select('SELECT `key`, `value` FROM registry WHERE block_id='.$block['block_id']);
			foreach ($params as $param) {
				$block[$param['key']] = $param['value'];
			}
		}
		
		$this->set('materials', $this->rk->getModel('web/materials'));
		
		$this->set('templates', $blocks);
	}
	
	
	public function getGallary() {
		$gallary_dir = $this->rk->path->base.'images/gallary/';
		$gallary = scandir($gallary_dir);
		$thumbs_dir = $gallary_dir . 'thumb/';
		if (!is_dir($thumbs_dir)) mkdir($thumbs_dir);
		$exts = array('jpg', 'jpeg', 'png');
		$images = array();
		foreach ($gallary as $file) {
			if (in_array(pathinfo($file, PATHINFO_EXTENSION), $exts)) {
				$thumb = $thumbs_dir . $file;
				if (!file_exists($thumb) || 0) {
					$img = new \Imagick($gallary_dir . $file);
					$img->cropThumbnailImage(202, 202);
					$img->writeImage($thumb);
				}
				$images[] = 'thumb/'.$file;
			}
		}
		return $images;
	}
	
}