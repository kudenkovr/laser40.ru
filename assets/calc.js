var calc = {};

calc.materials = pricelist || {};

calc.round = function(x, n) {
	// defaults
	n = n ? n : 2;
	
	// begin
	let e = Math.pow(10, n);
	let c = String(Math.round(x*e) / e).split('.');
	if (!c[1]) c[1] = "00";
	else {
		c[1] = c[1].substr(0,2);
		while (c[1].length < 2) c[1]+="0";
	}
	return c.join(".");
}


calc.getCost = function(material, option, width, height) {
	if (this.materials[material] && this.materials[material].getCost) {
		return this.round(this.materials[material].getCost(width, height, option));
	}
	else if (this.materials[material] && this.materials[material].options[option]) {
		let m = this.materials[material];
		let o = m.options[option];
		let area = width*height/1000000; // mm >> m
		let perimeter = (width+height)*2/1000;
		// return this.round((m.matPrice * area * o.weight) + (o.pmPrice * perimeter));
		return this.round(o.pmPrice * perimeter);
	}
	else return this.round(0);
}


calc.Number = function(str) {
	let n = Number(str);
	if (isNaN(n)) return 0;
	else return n;
}



$(document).ready(function(){
	calc.$mats = $('.calculator #material');
	calc.$optTitle = $('.calculator [for=option]');
	calc.$sizeTitle = $('.calculator [for=width]');
	calc.$options = $('.calculator #option');
	calc.$width = $('.calculator #width');
	calc.$height = $('.calculator #height');
	calc.$form = $('.calculator form');
	calc.$result = $('.calculator .calculator-result');
	calc.$cost = $('.calculator #cost');
	calc.cost = 0;
	
	calc.$btnCalculate = $('#calculate');
	calc.$btnOrder = $('#order');
	
	
	// Create materials list
	let html = '';
	for (let m in calc.materials) {
		html += '<option value="'+m+'">'+calc.materials[m].title+'</option>';
	}
	calc.$mats.html(html);
	calc.$mats.children('option').eq(0).attr('selected', 'selected');
	
	// Create options list
	calc.$mats.change(function(){
		let m = $(this).val();
		calc.$optTitle.text(calc.materials[m].optionsTitle || 'Толщина (мм)'); // default
		calc.$sizeTitle.text(calc.materials[m].sizeTitle || 'Размеры (мм)'); // default
		
		let html = '';
		for (let o in calc.materials[m].options) {
			html += '<option value="'+o+'">'+calc.materials[m].options[o].title+'</option>';
		}
		calc.$options.html(html);
		calc.$options.children('option').eq(0).attr('selected', 'selected');
	});
	
	calc.$mats.change();
	
	
	calc.$result.on('change', function(){
		let w = calc.Number(calc.$width.val());
		let h = calc.Number(calc.$height.val());
		if (!(w && h)) {
			$(this).trigger('hide');
			return false;
		}
		let m = calc.$mats.val();
		let o = calc.$options.val();
		calc.cost = calc.getCost(m, o, w, h);
		
		calc.$cost.animateNumber(calc.cost, 300, 2);
	});
	calc.$result.on('show', function(){
		calc.$btnCalculate.hide();
		calc.$btnOrder.show();
		$(this).addClass('_show');
	});
	calc.$result.on('hide', function(){
		calc.$btnOrder.hide();
		calc.$btnCalculate.show();
		$(this).removeClass('_show');
	});
	
	calc.$form.on('change', 'select, [type=text]', function(){ calc.$result.trigger('change'); });
	calc.$form.on('keyup', '[type=text]', function(){ calc.$result.trigger('change'); });
	
	
	calc.$form.submit(function(){
		calc.$result.trigger('show');
		calc.$result.trigger('change');
		return false;
	});
});