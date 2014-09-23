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
	    alert("There was a problem.");
      }
    });
  });  

  $('#show_contacts').on('click', '.update_contact', function() {
    var contact_id = $(this).attr("rel");
    var data =  "id=" + contact_id + 
                 ";first_name="  +  $(this).closest('tr').find('.first_name').val()   + 
                 ";last_name="   +  $(this).closest('tr').find('.last_name').val()    +
                 ";phone_number=" +  $(this).closest('tr').find('.phone_number').val() + 
                 ";address="      +  $(this).closest('tr').find('.address').val()
                   

    $.ajax({
      url:  '/contact/update_contact',
      type: "post",
      data:  data,
      success:function(data){
            location.reload();
      },
      error:function(d,x,s){
	    alert("There was a problem.");
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
