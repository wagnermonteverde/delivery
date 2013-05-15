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


        <title>JSP Page</title>
    </head>
    <body>

    <body>
        <form action="Botao" id="searchForm">
            <input type="text" name="s" placeholder="Search..." />
            <input type="submit" value="Search" />
        </form>
        <!-- the result of the search will be rendered inside this div -->
        <div id="result"></div>

        <script>
            /* attach a submit handler to the form */
            $("#searchForm").submit(function(event) {
 
                /* stop form from submitting normally */
                event.preventDefault();
 
                /* get some values from elements on the page: */
                var $form = $( this ),
                term = $form.find( 'input[name="s"]' ).val(),
                url = $form.attr( 'action' );
 
                /* Send the data using post */
                var posting = $.post( url, { s: term } );
 
                /* Put the results in a div */
                posting.done(function( data ) {
                    var content = $( data ).find( '#content' );
                    alert("Data Loaded: " + data);
                    $( "#result" ).html(data);
                });
            });
        </script>


    </body>
</html>
