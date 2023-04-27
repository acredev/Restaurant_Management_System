$(document).ready(function(){
    $('.form-item i').on('click',function(){
        $('input').toggleClass('active');
        if($('input').hasClass('active')){
            $(this).attr('class',"fa-solid fa-eye-slash")
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"fa-solid fa-eye")
            .prev('input').attr('type','password');
        }
    });
});