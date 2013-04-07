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

            #register-form .fieldgroup label.error {
                color: #FB3A3A;
                display: inline-block;
                margin: 4px 0 5px 125px;
                padding: 0;
                text-align: left;
                width: 220px;
            }
        </style>

        <%@include file="imports.jsp" %>

        <script type="text/javascript" src="js/jquery.validate.min.js"></script>
        <script type="text/javascript" src="js/jquery.maskedinput.js"></script>

        <script type="text/javascript">
            /**
             * Basic jQuery Validation Form Demo Code
             * Copyright Sam Deering 2012
             * Licence: http://www.jquery4u.com/license/
             */
            (function($,W,D)
            {
                var JQUERY4U = {};

                JQUERY4U.UTIL =
                    {
                    setupFormValidation: function()
                    {
                        //form validation rules
                        $("#register-form").validate({
                            rules: {
                                rua: "required",
                                cidade: "required",
                                n:{
                                    required:true,
                                    number: true
                                },
                                estado: "required",
                                cep: "required"
                              
                            },
                            messages: {
                                
                                rua: "Rua não pode estar e branco",
                                cidade: "Cidade não pode estar em branco",
                                n:{
                                    required:"Numero não pode estar em branco",
                                    number:"Este campo é numerico"
                                },
                                estado: "Estado não pode estar em Branco",
                                cep: "Cep não pode estar em branco"
                            },
                            submitHandler: function(form) {
                                form.submit();
                                // alert("Dados Enviados com Sucesso :)");
                                
                            }
                        });
                    }
                }

                //when the dom has loaded setup form validation rules
                $(D).ready(function($) {
                    JQUERY4U.UTIL.setupFormValidation();
                });

            })(jQuery, window, document);
        </script>

        <script type="text/javascript">
            $(document).ready(function(){
                $("#cep").mask("99999-999");
               
            });
        </script>


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
                    Cadastro de Endereço
                </li>
            </ul>

            <div class="hero-unit center" id="body">
                <h3>Complete seu cadastro e Preencha seu endereço assim podemos te mostrar as ofertas e lojas perto de você :) !</h3>
                <form action="ControlerSetEnderecoLocation" method="POST" id="register-form" novalidate="novalidate">
                    <div class="fieldgroup">
                        <label class="right ">Rua:</label>
                        <input  class="span7"type="text" name="rua" id="rua" value=""  />
                    </div>

                    <div class="fieldgroup">
                        <label class="right">Cidade:</label>
                        <input class="span7"type="text" name="cidade" value="" />
                    </div>
                    <div class="fieldgroup">
                        <label class="right">Nº:</label>
                        <input  class="span1"type="text" name="n" value="" />
                    </div>
                    <div class="fieldgroup">
                        <label class="right">Estado:</label>
                        <input class="span2"type="text" name="estado" value="" />
                    </div>
                    <div class="fieldgroup">
                        <label class="right">Cep:</label>
                        <input class="span2" type="text" name="cep" value="" id="cep"/><br />
                    </div>
                    <a class="btn" href="index.jsp">Cancelar</a>
                    <button class="btn btn-primary" type="submit">Aceito todos os termos e Criar conta</button>

                </form>

            </div>



            <%@include file="footer.jsp" %>

        </div>



    </body>
</html>
