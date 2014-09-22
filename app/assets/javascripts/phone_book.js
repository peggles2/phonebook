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

  $('#show_contacts').on('click', '.cancel_update', function() {
	$(this).closest('tr').hide()
    $(this).closest('tr').prev().show();	
  });

  $('#show_contacts').on('click', '.edit_contact', function() {
	$(this).closest('tr').hide();
    edit_field = 	$(this).closest('tr').next()
	edit_field.removeClass('hidden');
	edit_field.show();
  });

  $("#confirm_delete").on('shown.bs.modal', function (e) {
    $('.delete_contact').val(e.relatedTarget.value)
  });
});
