<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>

        <style>

            #login .fieldgroup label.error  {
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
                $('#login').validate({
                    rules:{
                    
                        mail:{ 
                        
                            required: true,email: true
                          
                        
                        },
                        
                        password:{ 
                        
                            required: true
                        
                        }
                    
                    
                    },
                    messages:{
                        
                        mail:{
                            
                            required: 'Por favor preencha o Email' 
                        
                        },
                        
                        password:{
                            
                            required: 'Por favor preencha a senha' 
                        
                        }
                    }
 
                });
            });
        </script>

        <title>Login</title>

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
                    Login
                </li>
            </ul>

            <c:choose>

                                <c:when test="${usuario==null}">
                                    <div style="text-align: center">
                                    <h3>Para realizar uma busca é necessário estar logado!</h3>
                                    <a href="AutenticarFacebook" class="pull"><img src="img/facebook.png"></br>Ainda não possui cadastro?</br><img src="img/facebook.png"></a>
                                    <!--<a href="AutenticarTwitter"class="pull-right"><img src="img/twitter.png"></a>-->
                                    </div>
                                </c:when>

                                <c:otherwise>
                                    <form class="navbar-form pull-right" action="tumbail_1.jsp" method="POST">
                                        <input  name="textinput2" type="search" placeholder="Digite Aqui seu Endereço e veja as lojas perto de você!" class="span5">
                                    </form>
                                </c:otherwise>

                            </c:choose>
            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>