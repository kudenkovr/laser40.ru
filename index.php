<?php
require_once '../rk-light/autoloader.php';

$rk = new RK(__DIR__);
$rk->config->set($rk->getConfig('core/config/config.php'));
$rk->connectDB();
$rk->router->routeFile('routes.php');
echo $rk->output();

exit;






// include dirname(__FILE__).'/config.php';

// include BASE_PATH . 'core/lib/parse_ini_file_multi.function.php';
// include BASE_PATH . 'core/lib/gettpl.function.php';
// include BASE_PATH . 'core/core.autoloader.php';

// $_registry = array();
// $_registry = parse_ini_file_multi('templates/config.ini', true);


if (empty($_POST)) {
	// $_registry['templates'] = array();
	// foreach ($_registry as $tpl => $tplConfig) {
		// if (is_array($tplConfig) && !empty($tplConfig['is_tpl'])) {
			// $_registry['templates'][] = $tpl;
		// }
	// }
	// echo getTpl('index', $_registry);
} else if (!empty($_POST['foo'])) {
	$mail = new Lib\MailMaster\Mail();
	$mail->from($_registry['mail']['from'], $_POST['name']);
	
	$mailTo = explode(',', $_registry['mail']['to']);
	
	$mail->subject($_registry['mail']['subject']);
	
	if (!empty($_FILES)) {
	$uploads_dir = BASE_PATH.'uploads';
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
	
	$mail->body(getTpl($_registry['mail']['template'], $_POST));
	foreach ($mailTo as $email) {
		$mail->to(trim($email));
		$mail->send();
	}
	
	$output = $_POST;
	$output['success'] = true;
	
	echo json_encode($output);
}
