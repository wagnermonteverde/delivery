<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>

        <style>

            #face {
                color:white;
            }

            #sair {
                color:white;
            }

            #topo {
                background-color:blue;
            }


        </style>

        <%@include file="imports.jsp" %>

        <title>Promoção é Aqui</title>

    </head>
    <body>


        <div class="container">
        <%@include file="header.jsp" %>
            
        <ul class="breadcrumb">
		<li>
			<a href="#">Inicio</a>
			<span class="divider">/</span>
		</li>
		
		<li class="active">
			Perfil
		</li>
	</ul>

        
            <div class="container-narrow">
                <div class="masthead">
                    <ul class="nav nav-pills pull-right">
                        <li class="active">
                        </li>
                    </ul>
                </div>
               
                <h2>
                    <img class="img-circle" src="<c:out value="${usuario.fotoString}"/>">
                    &nbsp;${usuario.name}  ${usuario.lastName}
                </h2>
                <a class="btn btn-primary disabled">Perfil Vinculado ao Facebook :)</a>
                <p class="lead">
                    Perfil Delivery Social é uma Honra ter você conosco :)
                </p>
                <div class="jumbotron">
                </div>
                <hr>
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td class="span5">Nome: ${usuario.name}  ${usuario.lastName}</td>
                        </tr>
                        <tr>
                            <td class="span5">Data Nascimento: </td>
                        </tr>
                        <tr>
                            <td class="span5">Email: ${usuario.mail}</td>
                        </tr>
                    </tbody>
                </table>
                <hr>
                <div class="footer">
                    <p>
                        © Company 2013
                    </p>
                </div>
            </div>
            <!-- /container -->


            <%@include file="footer.jsp" %>

        </div>



    </body>
</html>
