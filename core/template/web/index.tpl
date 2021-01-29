<? foreach($templates as $tpl): ?>
		
		<!--=== <?=$tpl['name']?> ===-->
<?=$this->render($tpl['template'], $tpl)?>
		
<? endforeach; ?>