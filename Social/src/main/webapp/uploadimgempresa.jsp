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

            <form id="formSendFile" 
                  name="formSendFile" 
                  method="post" 
                  action="ControlerUploadServlet" 
                  enctype="multipart/form-data">
                Name: <br/>
                <input name="namePerson" type="text" /><br/><br/>
                Picture:<br/>
                <input name="imagem" type="file" id="imagem" maxlength="60" name="arq" /><br/><br/>
                <input type="submit" id="upload" name="upload" value="insert" />
            </form>

            <%@include file="footer.jsp" %>
        </div>

    </body>
</html>