$('document').ready(function() {
  //PREVENT FORM SUBMIT TWICE
  $('#new_post')..submit(function(e){
    e.preventDefault();
    e.stopPropagation();
  });
  $('#new_category')..submit(function(e){
    e.preventDefault();
    e.stopPropagation();
  });

});
