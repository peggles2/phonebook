$(function() {
  
  $('#show_contacts').on('click', '.delete_contact', function() {
    contact_id = 'contact_id=' + $(this).val(); 
    $.ajax({
      url:'/contact/delete_contact',
      type:"post",
      data:contact_id,
      success:function(data){
	    location.reload();
      },
      error:function(d,x,s){
      }
    });
  });  

  $("#confirm_delete").on('shown.bs.modal', function (e) {
    $('.delete_contact').val(e.relatedTarget.value)
  });
});
