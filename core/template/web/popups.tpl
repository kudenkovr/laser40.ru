		<div class="popup-wrap">
			<div class="cover"></div>
			
			<div class="popup" id="formOrder">
				<div class="popup-header">Заявка на предварительный рассчёт</div>
				<div class="popup-content">
					<form method="post" enctype="multipart/form-data" class="form axForm">
						<input type="hidden" name="material">
						<input type="hidden" name="option">
						<input type="hidden" name="size">
						<input type="hidden" name="cost">
						<input type="hidden" name="totalcost">
						
						<div class="form-group">
							<label for="name" class="form-label">Имя, фамилия</label>
							<input type="text" name="name" id="name" class="form-field" required>
						</div>
						<div class="form-group">
							<label for="phone" class="form-label">Телефон</label>
							<input type="tel" name="phone" id="phone" class="form-field" required>
						</div>
						<div class="form-group">
							<label for="count" class="form-label">Количество</label>
							<div class="row-flex flex-middle colspacing-10 form-field-group">
								<div class="col-1-2">
									<input type="text" name="count" id="count" value="1" class="form-field" placeholder="1" required pattern="(\d)+">
								</div>
								<div class="col-1-2">
									от <big id="totalcost">0.00</big> руб.
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="comment" class="form-label">Комментарий</label>
							<textarea id="comment" name="comment" class="form-field form-textarea"></textarea>
						</div>
						<div class="form-group">
							<label for="file" class="form-label">Прикрепить файл</label>
							<div class="form-field form-file" id="add_file_btn" onclick="$(this).next().click();"><p>Добавить файлы</p><small>(чтобы выбрать несколько, зажмите CTRL на клавиатуре)</small></div>
							<input type="file" id="file" name="file" multiple="multiple" onchange="let s='';for(let i=0;i<this.files.length;i++)s+='  <p>'+this.files[i].name+'</p>';document.getElementById('add_file_btn').innerHTML=s.substr(2)">
							<div class="form-files-container"></div>
						</div>
						<div class="form-group _center">
							<input type="submit" value="Отправить" class="button">
						</div>
					</form>
				</div>
				<div class="popup-close"></div>
			</div>
			
			
			<div class="popup" id="popupThanks">
				<div class="popup-header">Спасибо за заказ!</div>
				<div class="popup-content text">
					<p>Наш менеджер свяжется с вами после рассмотрения заказа.</p>
					<p>Более точную информацию мы сообщим вам по телефону <b class="phone"></b>.</p>
				</div>
				<div class="popup-close"></div>
			</div>
			
		</div>