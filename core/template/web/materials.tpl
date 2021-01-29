		<a id="materialsSection"></a>
		<div class="section materials">
			<div class="container">
				<h2 class="caption _size-2 _center"><?=$title?></h2>
				<div class="row-flex flex-center colspacing-60 material-items">
<? foreach ($materials as $item): ?>
					<div class="xs-col-1 sm-col-1-2 md-col-1-4 nm-col-1-5 _center icon-block _<?=$item['alias']?>">
						<h4 class="caption _size-4"><?=$item['title']?></h4>
						<p><?=$item['description']?></p>
					</div>
<? endforeach; ?>
				</div>
			</div>
		</div>