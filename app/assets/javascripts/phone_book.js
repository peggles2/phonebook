$(function() {
  $(".delete_contact").click(function(){
    contact_id = 'contact_id=' + $(this).val(); 
    $.ajax({
      url:'/contacts/delete_contact',
      type:"post",
      data:contact_id,
      success:function(data){
      },
      error:function(d,x,s){
      }
    });
  });  

});
