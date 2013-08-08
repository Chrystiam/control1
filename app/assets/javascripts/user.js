$('#user_center_name').bind('railsAutocomplete.select', function(event, data){
  /* Do something here */
  alert(data.item.id);
});


