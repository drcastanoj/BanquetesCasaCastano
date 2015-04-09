


$(document).on('ready',principal);

function principal(){
    $('#mensaje').on('submit', ejecutarAjax);
}

function ejecutarAjax(){
    
    
    var mensajeEnviado = {
        'nombre' : $('.nombre').val() ,
        'email' : $('.email').val(),
        'number' : $('.telefono').val(),
        'asunto' : $('.asunto').val(),
        'mensaje': $('.mensaje').val()
        
    };
    
    
    $.ajax({
            beforeSend: function (xhr) {
            $('.ajax-loader').css({ visibility: 'visible' });
             },
            type    :'POST',
            url     :'./contactanos.php?option=enviar_mensaje',
            data    :mensajeEnviado,
            dataType: 'json',
            encode  :true
            
            
            }).done( function (data){
                
                if(data.exito){
                    var m ="Gracias " + data.nombre + " por contactarnos, Pronto nos comunicaremos ";
                    alert (m);
                }else{
                    alert(data.error);
                }
                
            });
            
            event.preventDefault();
    
}