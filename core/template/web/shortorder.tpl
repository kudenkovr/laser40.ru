		<a id="shortOrder">
		<div class="section _bg-dark short-order">
			<div class="container">
				<div class="row-flex flex-center">
					<div class="xs-col-1 md-col-7-12 nm-col-1-2 lg-col-5-12">
						<h2 class="caption _size-2 _center"><?=$title?></h2>
						<div class="short-order-form">
							<form method="post" enctype="multipart/form-data" class="jAXForm form">
								<div class="form-group">
									<label for="short_order_name" class="form-label">Имя, фамилия</label>
									<input type="text" name="name" id="short_order_name" class="form-field" required>
								</div>
								<div class="form-group">
									<label for="short_order_phone" class="form-label">Телефон</label>
									<input type="text" name="phone" id="short_order_phone" class="form-field" required>
								</div>
								<div class="form-group">
									<label for="short_order_phone" class="form-label">Укажите материал, его толщину, параметры детали, а также дополнительную информацию:</label>
									<textarea name="description" id="short_order_description" class="form-field" required></textarea>
								</div>
								<div class="form-group _center">
									<input type="submit" value="Заказать" class="button">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>