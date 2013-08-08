function calcular() {
  var can_in = $('#production_amount_in').val();
  var can_out = $('#production_amount_out').val();
  var saldo = (can_out - can_in); 
  $("#production_remaining").val(saldo*-1);
  return can_out
}

$('#production_amount_out').bind("keydown change click keyup",function() { 
  calcular()
});
$('#production_amount_in').bind("keydown change click keyup",function() { 
  calcular()
});

$('#production_a_amount').bind("keydown change click keyup",function() { 
  var can_out = calcular();
  var tipo_a = $('#production_a_amount').val();
  var restante = (can_out-tipo_a);
  $('#production_b_amount').val(restante);
});

$(function() {
  $(".datepicker" ).datepicker({ dayNamesMin: [ "Dom", "Lun", "Mar", "Mie", "Jue", "Vie", "Sab" ] });
  var dateFormat = $(".datepicker" ).datepicker( "option", "dateFormat" );
  $(".datepicker" ).datepicker( "option", "dateFormat", "dd-mm-yy" );
  $(".datepicker").datepicker();
});