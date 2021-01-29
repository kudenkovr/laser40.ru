<p>Новая заявка с сайта <?=$site_name?></p>
<span style="display: inline-block; width: 150px; margin: 0 20px .5em 0;">Имя:</span>
	<b style="display: inline-block;"><?=$name?></b><br>
<span style="display: inline-block; width: 150px; margin: 0 20px .5em 0;">Телефон:</span>
	<b style="display: inline-block;"><?=$phone?></b><br>
<span style="display: inline-block; width: 150px; margin: 0 20px .5em 0;">Материал:</span>
	<b style="display: inline-block;"><?=$material?> (<?=$option?>)</b><br>
<span style="display: inline-block; width: 150px; margin: 0 20px .5em 0;">Размер детали:</span>
	<b style="display: inline-block;"><?=$size?></b><br>
<span style="display: inline-block; width: 150px; margin: 0 20px .5em 0;">Стоимость детали:</span>
	<b style="display: inline-block;"><?=$cost?> руб.</b><br>
<span style="display: inline-block; width: 150px; margin: 0 20px .5em 0;">Количество:</span>
	<b style="display: inline-block;"><?=$count?></b><br>
<span style="display: inline-block; width: 150px; margin: 0 20px .5em 0;">Итого:</span>
	<b style="display: inline-block;"><?=$totalcost?> руб.</b><br>
<? if(!empty($comment)): ?>
<p>Комментарий:<br>
<i style="display:inline-block;padding:10px 20px;margin-top:.5em;background:#eee;"><?=$comment?></i></p>
<? endif; ?>
