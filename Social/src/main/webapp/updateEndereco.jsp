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

            #body{
                font-family: 'Audiowide', cursive, arial, helvetica, sans-serif;
                background:url(img/error_bg.png) repeat;
                background-color:#212121;
                color:white;
                font-size: 30px;
                padding-bottom:20px;
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
        <script src="assets/js/bootstrap-lightbox.min.js"></script>


        <title>Promoção é Aqui</title>

    </head>
    <body>


        <div class="container">
            <%@include file="header.jsp" %>

            <div class="hero-unit center" id="body">
                <h3>Complete seu cadastro e Preencha seu endereço assim podemos te mostrar as ofertas e lojas perto de você :) !</h3>
                <form action="ControlerSetEnderecoLocation" method="POST">
                    <label class="right ">Rua</label>
                    <input  class="span8"type="text" name="rua" id="rua" value=""  />
                    <label class="right">Cidade</label>
                    <input class="span7"type="text" name="cidade" value="" />
                    <label class="right">Nº</label>
                    <input  class="span1"type="text" name="n" value="" />
                    <label class="right">Estado</label>
                    <input class="span2"type="text" name="estado" value="" />
                    <label class="right">Cep</label>
                    <input type="text" name="cep" value="" /><br />
                    <a class="btn" href="index.jsp">Cancelar</a>
                    <button class="btn btn-primary" type="submit">Aceito todos os termos e Criar conta</button>


                </form>

            </div>



            <%@include file="footer.jsp" %>

        </div>



    </body>
</html>
