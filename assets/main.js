$(document).ready(function(){
	$(document).on('click', '.popup-close, .cover', function(){
		$('.popup-wrap').fadeOut(200);
	});
	
	$('#order').click(function(){
		$('.popup').hide();
		let $form = $('#formOrder').show();
		$form.find('form')[0].reset();
		$form.find('[type=submit]').removeAttr('disabled');
		$form.find('#add_file_btn').html("<p>Добавить файлы</p><small>(чтобы выбрать несколько, зажмите CTRL на клавиатуре)</small>");
		$('.popup-wrap').fadeIn(200);
		
		// Set hidden values
		$form.find('[name=material]').val( calc.materials[calc.$mats.val()].title );
		$form.find('[name=option]').val( calc.materials[calc.$mats.val()].options[calc.$options.val()].title );
		$form.find('[name=size]').val( calc.$width.val() + 'x' + calc.$height.val() + ' мм' );
		$form.find('[name=cost]').val( calc.cost );
		
		$form.find('[name=count]').change(function(){
			let totalCost = $(this).val()*calc.cost;
			$form.find('[name=totalcost]').val( calc.round(totalCost, 2) );
			$form.find('#totalcost').animateNumber(totalCost, 300, 2);
		});
		$form.find('[name=count]').keyup(function(){$(this).change()});
		$form.find('[name=count]').change();
	});
	
	
	
	$('.axForm').jAXForm({foo: 'bar'}, function(data){
		console.log(data);
		$('.popup').fadeOut(200);
		setTimeout(function(){
			$('#popupThanks .phone').text(data.phone);
			$('#popupThanks').fadeIn(200);
		}, 100);
	});

});
var fd;