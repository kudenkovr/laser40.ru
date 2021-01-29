<?php
return array(
	array(
		'ajax' => true,
		'request' => ['foo'=>'bar'],
		'rule' => '/',
		'action' => 'web/index/order',
	),
	array(
		'rule' => '/',
		'action' => 'web/index/index'
	),
	array(
		'rule' => '.*',
		'action' => 'index/error404'
	)
);