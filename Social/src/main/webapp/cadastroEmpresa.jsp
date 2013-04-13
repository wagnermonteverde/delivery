<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>

        <style>

            #formfisica .fieldgroup label.error {
                color: #FB3A3A;
                display: inline-block;
                margin: 4px 0 5px 125px;
                padding: 0;
                text-align: left;
                width: 220px;
            }
            
            #formjuridica .fieldgroup label.error {
                color: #FB3A3A;
                display: inline-block;
                margin: 4px 0 5px 125px;
                padding: 0;
                text-align: left;
                width: 220px;
            }

        </style>

        <meta charset="utf-8">
        <%@include file="imports.jsp" %>
        <script type="text/javascript" src="js/jquery.validate.min.js"></script>  
        <!-- acima as dependencias, e abaixo o meu javascript, e um exemplo -->  
        <script type="text/javascript" src="js/util.validate.js"></script> 
        <script type="text/javascript" src="js/jquery.maskedinput.js"></script>




        <script type="text/javascript">  
            
            
            $(document).ready(function(){
                $("#cpf").mask("999.999.999-99");
                $("#cnpj").mask("99.999.999/9999-99");
               
            });
            
            
            
            
            $(function() {  
                $("#formfisica").validate({  
                    debug:true, //retira essa linha, para o form voltar a funcionar  
                    rules: {  
                        "pessoa.cpf" : {  
                            cpf: 'both' //valida tanto Formatação como os Digitos  
                            //caso não queira validar a formatação use => cpf: 'valid'  
                            //caso só queira validar a formatação use => cpf: 'format'  
                        }
                    }  
                });  
            }); 
            
            
            $(function() {  
                $("#formjuridica").validate({  
                    debug:true, //retira essa linha, para o form voltar a funcionar  
                    rules: {  
                        "empresa.cnpj" : {  
                            cnpj: 'both' //valida tanto Formatação como os Digitos  
                        }  
                    }  
                });  
            });  
        </script>  

        <title>Area do Vendedor- Meus produtos</title>

    </head>

    <body>

        <div class="container">

            <%@include file="header.jsp" %>


            <div class="page-header">
                <h1>Cadastro Empresa<small> Vendedor</small></h1>
            </div>

            <div class="tabbable"> <!-- Only required for left/right tabs -->
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab1" data-toggle="tab"><button class="btn-success">Pessoa Física</button></a></li>
                    <li><a href="#tab2" data-toggle="tab"><button class="btn-success">Pessoa Jurídica</button></a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="tab1">

                        <form method="post" name="formfisica" id="formfisica">

                            <!-- Text input-->
                            <div class="control-group">
                                <label class="control-label">CPF:</label>
                                <div class="fieldgroup">
                                    <input type="text" name="pessoa.cpf" placeholder="00.000.000-00" id="cpf" value="" class="input-xlarge"  />
                                </div>
                            </div>

                        </form>

                    </div>
                    <div class="tab-pane" id="tab2">
                        <!-- Text input-->
                        <div class="control-group">
                           
                            <form method="post" name="formjuridica" id="formjuridica">

                            <!-- Text input-->
                            <div class="control-group">
                                <label class="control-label">CNPJ:</label>
                                <div class="fieldgroup">
                                    <input type="text" name="empresa.cnpj" placeholder="00.000.000/0000-00" id="cnpj" value="" class="input-xlarge"  />
                                </div>
                            </div>

                        </form>
                            
                            
                            
                        </div>
                    </div>
                </div>
            </div>


        </div>

    </body>
</html>