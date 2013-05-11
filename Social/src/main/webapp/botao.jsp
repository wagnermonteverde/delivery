<%-- 
    Document   : botao
    Created on : May 10, 2013, 8:28:44 PM
    Author     : wagner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="imports.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            //Quando o Documento HTML estiver carregado
            jQuery(document).ready(function(){
                //Ao clicar em um elemento do tipo button
                jQuery("button").click(function(){
                    //Requisição Ajax
                    jQuery.ajax({
                        url: "Botao", //URL de destino
                        dataType: "html", //Tipo de Retorno
                        success: function(html){ //Se ocorrer tudo certo
                           
                              $("#regTitle").html(html);
//                            var msg = "Nome: "+html+"" ;
//                            alert(msg);
                        }
                    });
                });
            });
        </script>

        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <button>Clique aqui</button>
         <div name="regTitle" id="regTitle"></div>
    </body>
</html>
