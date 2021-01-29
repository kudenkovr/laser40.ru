<?php
namespace Controller\Web;
use Engine\Controller;

class Index extends Controller {
	
	public function actionIndex($data) {
		if ($this->rk->request->isAjax() && $this->rk->request->has('foo')) return $this->actionOrder();
		// print_r($this->model);
		return $this->view->render('web/index', 'web/layout');
	}
	
	
	public function actionOrder() {
		$mail = $this->rk->getModule('mailmaster');
		$mail->from($this->model->email, $this->rk->request->name);
		
		$mailTo = explode(',', $this->model->mailto);
		
		$mail->subject($this->model->mailsubject);
		
		if (!empty($_FILES)) {
			$uploads_dir = $this->rk->path->base.'uploads';
			foreach ($_FILES["file"]["error"] as $key => $error) {
				if ($error == UPLOAD_ERR_OK) {
					$tmp_name = $_FILES["file"]["tmp_name"][$key];
					// basename() may prevent filesystem traversal attacks;
					// further validation/sanitation of the filename may be appropriate
					$name = basename($_FILES["file"]["name"][$key]);
					$file = "$uploads_dir/$name";
					move_uploaded_file($tmp_name, $file);
					$mail->addFile($file, $_FILES["file"]["name"][$key]);
					unlink($file);
				}
			}
		}
		
		$mail->body($this->view->render($this->model->mailtemplate, $this->rk->request->post));
		foreach ($mailTo as $email) {
			$mail->to(trim($email));
			$mail->send();
		}
		
		$output = $this->rk->request->post;
		$output['success'] = true;
		
		return json_encode($output);
	}
	
}