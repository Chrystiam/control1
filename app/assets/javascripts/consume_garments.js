function ejecutar() { 

  var input_id = $('#consume_garment_input_id').val();
  var quantity = $('#consume_garment_quantity_consume').val();
  
  if ((input_id != null) || (input_id != "undefined") || (input_id != "")) {
        
     if (quantity > 0) {
         $.ajax({
            url:'/consume_garments/cal_cost', //Defined in your routes file
            data:('id=' + input_id + '&' + 'cantidad=' + quantity)  
         });
     }
     return true;
  }
           
}

$('#consume_garment_quantity_consume').bind("keydown change click keyup",function() { 
   var r = true;
   r = ejecutar();
});
    
$('#consume_garment_input_id').change(function() { 
   var r = true;
   r = ejecutar();    
});


 

