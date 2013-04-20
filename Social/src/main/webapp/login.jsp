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

            <form class="form-horizontal pull" action='ControlerLoginVendedor' method="POST" name="login" id="login">
                <fieldset>
                    <div id="legend">
                        <legend class="">Login Vendedor</legend>
                    </div>
                    <c:if test="${erro!=null}">

                        <div class="alert alert-error">
                            Email ou senha incorretos! :(
                        </div>

                    </c:if>
                    <div class="control-group">
                        <!-- Username -->
                        <label class="control-label"  for="mail">Email</label>
                        <div class="controls">
                            <div class="fieldgroup">
                                <input type="text" id="mail" name="mail" placeholder="seuemail@mail.com" class="input-xlarge">
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <!-- Password-->
                        <label class="control-label" for="password">Senha</label>
                        <div class="controls">
                            <div class="fieldgroup">
                                <input type="password" id="password" name="password" placeholder="*****" class="input-xlarge">
                            </div>
                        </div>
                    </div>


                    <div class="control-group">
                        <!-- Button -->
                        <div class="controls">
                            <button class="btn btn-success">Login</button>
                        </div>
                    </div>
                </fieldset>

            </form>
            <a class=" btn btn-info" href="parceiro.jsp">Ainda não é Anunciante cadastre-se aqui e coloque seus  produtos na internet!</a>

            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>