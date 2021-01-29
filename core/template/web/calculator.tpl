		<div class="section calculator _bg-dark-image" id="calculator">
			<div class="container">
				<div class="text _center">
					<h2 class="caption _size-2">Узнать стоимость изготовления изделия</h2>
					<p>Введите основные параметры изделия, чтобы узнать примерную стоимость его изготовления на лазерном станке.</p>
				</div>
				
				<div class="row-flex _flex-center">
					<div class="xs-col-1 sm-col-10-12 md-col-7-12 nm-col-1-2 lg-col-5-12">
						<form method="post" class="form">
							<div class="form-group">
								<label for="material" class="form-label">Материал</label>
								<select name="material" id="material" class="form-field form-select">
									<option value="black-steel" selected>Чёрный металл</option>
								</select>
							</div>
								
							<div class="form-group">
								<label for="option" class="form-label">Толщина (мм)</label>
								<select name="option" id="option" class="form-field form-select">
									<option value="0.25" selected>0.25 мм</option>
								</select>
							</div>
								
							<div class="form-group">
								<label for="width" class="form-label">Размеры (мм)</label>
								<div class="row-flex flex-middle colspacing-10 form-field-group">
									<div class="col-flex-filling">
										<input type="text" name="width" id="width" value="300" class="form-field" placeholder="0" required>
									</div>
									<div class="col-0">x</div>
									<div class="col-flex-filling">
										<input type="text" name="height" id="height" value="400" class="form-field" placeholder="0" required>
									</div>
								</div>
							</div>
							
							<div class="row-flex flex-middle">
								<div class="form-group col-1 _center sm-col-0 _sm-left">
									<input type="submit" value="Посчитать" class="button" id="calculate">
									<input type="button" value="Оставить заявку" class="button" id="order">
								</div>
						
								<div class="col-flex-filling _center sm-col-flex-filling _sm-left calculator-result">
									от <big id="cost">0</big> руб./шт.
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>