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

        <%@include file="imports.jsp" %>

        <script type="text/javascript" src="js/jquery.maskedinput.js"></script>
        <script src="js/cadastroPessoa.js" type="text/javascript"></script>  

        <script type="text/javascript">
            $(document).ready(function(){
                $("#cpf").mask("999.999.999-99");
                $("#data").mask("99/99/9999");
               
            });
        </script>


        <title>Promoção é Aqui</title>

    </head>
    <body>


        <div class="container">
            
            <%@include file="header.jsp" %>

            <ul class="breadcrumb">
                <li>
                    <a href="index.jsp">Inicio</a>
                    <span class="divider">/</span>
                </li>

                <li class="active">
                    Cadastrar CPF e Data de Nascimento
                </li>
            </ul>

            <div class="hero-unit center" id="body">
                <h3>Para fazer um pedido vc deve cadastrar seu CPF e <br>sua data de nascimento Thanks :)</h3>
                <form  action="persisteCliente" name="cadastroPessoa" method="POST" onsubmit="return valida()">
                    <label for="cpf">CPF:</label>
                    <input id="cpf" type="text" required pattern="^(\d{3}\.\d{3}\.\d{3}-\d{2})|(\d{11})$" placeholder="888.888.888-88" /><br />
                    <label for="dataEntrada">Data</label>
                    <input id="data" type="date" min="2012-01-01" required /><br />
                   
                </form>

            </div>



            <%@include file="footer.jsp" %>

        </div>



    </body>
</html>
