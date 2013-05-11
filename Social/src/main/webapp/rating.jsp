<%-- 
    Document   : rating
    Created on : 05/05/2013, 17:58:35
    Author     : wagner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="imports.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            
            $(document).ready(function(){	
                $('#loader').hide(); 
                $('#inner').children().click(function(){
                    var a = $(this).attr("id");
                    $.post("rating.php?value="+a, {
                    }, function(response){
                        $('#inner').fadeOut();
                        $('#inner').html(unescape(response));
                        $('#inner').fadeIn();
                        setTimeout("hideMesg();", 2000);
                    });
                });	
            });	
	
            function hideMesg(){

                $('.rating_message').fadeOut();
                $.post("rating.php?show=1", {
                }, function(response){
                    $('#inner').html(unescape(response));
                    $('#inner').fadeIn('slow');
                });
            }	
            
        </script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>


    </body>
</html>
