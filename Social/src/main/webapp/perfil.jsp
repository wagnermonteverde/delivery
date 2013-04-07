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

       <link rel="shortcut icon" href="img/favicon.ico">
        <link rel="alternate" type="application/rss+xml" title="Bootsnipp feed" href="http://bootsnipp.com/feed/" />
        <link rel="alternative" type="application/atom+xml" href="http://bootsnipp.com/feed/atom">
        <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-72x72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-114x114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-144x144-precomposed.png">
        <link href="css/bootstrap.min.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/bundles/bootstrapper/css/nav-fix.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/bundles/bootstrapper/css/bootstrap-responsive.min.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/css/prettify.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/css/bootsnipp.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/css/codemirror.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/css/jackedup.css" media="all" type="text/css" rel="stylesheet">
        <script src="http://bootsnipp.com/bundles/bootstrapper/js/jquery-1.8.2.min.js"></script>
        <script src="http://bootsnipp.com/bundles/bootstrapper/js/bootstrap.min.js"></script>
        <script src="http://bootsnipp.com/js/prettify.js"></script>
        <script src="http://bootsnipp.com/js/codemirror.js"></script>
        <script src="http://bootsnipp.com/js/humane.min.js"></script>


        <title>Promoção é Aqui</title>

    </head>
    <body>


        <div class="container">
        <%@include file="header.jsp" %>
            

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
