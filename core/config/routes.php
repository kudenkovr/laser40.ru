<?php
return array(
	array(
		'rule' => '/',
		'action' => 'web/index/index'
	),
	array(
		'rule' => '.*',
		'action' => 'page/error404'
	)
);