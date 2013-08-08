function calc() {

		
	var a = parseFloat($('#preproduction_cost_labeling').val());
	var b = parseFloat($('#preproduction_cost_printing').val());
	var c = parseFloat($('#preproduction_cost_plastic').val());
	var d = parseFloat($('#preproduction_cost_plotting').val());
	var e = parseFloat($('#preproduction_cost_perforated_paper').val());
	var costo = (a+b+c+d+e);
	$('#preproduction_cost_cost').val(costo);
}

$('#preproduction_cost_labeling').bind("keydown change click keyup",function() { 
	calc();
});

$('#preproduction_cost_printing').bind("keydown change click keyup",function() { 
	calc();
});

$('#preproduction_cost_plastic').bind("keydown change click keyup",function() { 
	calc();
});

$('#preproduction_cost_plotting').bind("keydown change click keyup",function() { 
	calc();
});

$('#preproduction_cost_perforated_paper').bind("keydown change click keyup",function() { 
	calc();
});

$('#preproduction_cost_perforated_paper').bind("keydown change click keyup",function() { 
	calc();
});