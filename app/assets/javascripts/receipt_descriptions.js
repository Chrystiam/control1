function ejecutar() { 

  var garment_id = $('#receipt_description_garment_id').val();
  var amount = $('#receipt_description_amount').val();
  
  if ((garment_id != null) || (garment_id != "undefined") || (garment_id != "")) {
        
     if (amount > 0) {
         $.ajax({
            url:'/receipt_descriptions/calc', //Defined in your routes file
            data:('id=' + garment_id + '&' + 'amount=' + amount)  
         });
     }
     return true;
  }
           
}

$('#receipt_description_amount').bind("keydown change click keyup",function() { 
   var r = true;
   r = ejecutar();
});
    
$('#receipt_description_garment_id').change(function() { 
   var r = true;
   r = ejecutar();    
});

