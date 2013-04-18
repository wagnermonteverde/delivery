<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>

        <style>

            #meu_form .fieldgroup label.error  {
                color: #FB3A3A;
                display: inline-block;
                margin:  1px 0 3px 10px;
                padding: 0;
                text-align: left;
                width: 300px;
                font-style:italic
            }
        </style>

        <meta charset="utf-8">
        <%@include file="imports.jsp" %>
        <script type="text/javascript" src="js/jquery.validate.min.js"></script>
        <script type="text/javascript">
            <!-- Validação do forumlário -->
            $(document).ready(function(){
                $('#meu_form').validate({
                    rules:{
                    
                        mail:{ 
                        
                            required: true,email: true,
                            remote: 'VerificaEmail'
                        
                        }
                    
                    
                    },
                    messages:{
                        
                        mail:{
                            
                            required: 'Campo Email é obrigatorio' ,
                            remote: 'Este Email já está em uso sorry :('
                        
                        }
                    }
 
                });
            });
        </script>

        <title>Seja Nosso Parceiro</title>

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
                    Seja Nosso Parceiro
                </li>
            </ul>

            <div class="page-header">
                <h1 class="text-info">
                    <em>Seja um Parceiro Net Lanche :)</em>
                </h1>

            </div>

            <!-- Jumbotron -->
            <div>
                <h1 class="text-success">Comece Hoje Mesmo!</h1>
                <p class="lead ">Cadastre seus produtos em nosso site e divulgue sua empresa no Facebook, Deixe os clientes te encontrarem com a nossa Busca Por Geolocalização sempre um cliente com fome e perto de você na internet :)</p>
                <form id="meu_form" method="post" action="cadastroVendedor.jsp">
                    <label>Email:</label>
                    <div class="fieldgroup">
                        <input class="span4" id="login" name="mail" type="text"/>
                    </div>
                    <input class="btn btn-large btn-success" type="submit" value="Cadastre-se Agora Mesmo !"/>
                    </br>
                </form>
            </div>

            <hr>

            <!-- Example row of columns -->
            <div class="row-fluid">
                <div class="span4">
                    <h2 class="text-info">Facebook</h2>
                    <p>Nosso site é vinculado ao facebook assim os usuarios que visitam e utilizam o Net Lanche  podem compartilhar e indicar suas preferêrencias pra todos os seus amigos :) junte-se a nós e comece agora mesmo a compartilhar e indicar suas preferências culinárias!</p>
                </div>
                <div class="span4">
                    <h2 class="muted">Google Maps</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                </div>
                <div class="span4">
                    <h2>Heading</h2>
                    <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>
                </div>
            </div>

            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>