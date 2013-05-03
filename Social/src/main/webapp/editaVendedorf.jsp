<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>

        <style>

            #formfisica .fieldgroup label.error {
                color: #FB3A3A;
                display: inline-block;
                margin:  1px 0 3px 10px;
                padding: 0;
                text-align: left;
                width: 400px;
                font-style:italic
            }

            #formjuridica .fieldgroup label.error  {
                color: #FB3A3A;
                display: inline-block;
                margin:  1px 0 3px 10px;
                padding: 0;
                text-align: left;
                width: 400px;
                font-style:italic
            }

        </style>

        <%@include file="imports.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <script type="text/javascript" src="js/jquery.validate.min.js"></script>  
        <!-- acima as dependencias, e abaixo o meu javascript, e um exemplo -->  
        <script type="text/javascript" src="js/util.validate.js"></script> 
        <script type="text/javascript" src="js/jquery.maskedinput.js"></script>





        <script type="text/javascript">  
            
            
            $(document).ready(function(){
                $("#cpf").mask("999.999.999-99");
                $("#cnpj").mask("99.999.999/9999-99");
                $("#cep").mask("99999-999");
                $("#cep1").mask("99999-999");
                
                //seleciona combobox estado com valo 18
                $("#estados").find("option[value='${estado.id}']").attr("selected",true);
               
            });
            
            
            
           
            
            
            $(function() {  
                $("#formfisica").validate({  
                    //debug:true, //retira essa linha, para o form voltar a funcionar  
                    rules: {  
                        
                        nome: {
                            required: true, minlength: 5
                        },
                        
                        mail : {
                            required: true, email: true
                        },
                        
                        mail2 : {
                            required: true, email: true,
                            equalTo: "#mail"
                        },
                        
                        
                        fantasia: {
                            required: true, minlength: 5,
                            remote:'VerificaNomeFantasia'
                            
                        },
                       
                        estados :{
                            
                            required: true
                            
                        },
                        
                        n:{
                            number: true
                        },
                        
                        rua: "required",
                        
                        cidade: {
                            
                            required:true
                            
                        },
                        
                        cep:{
                            
                            required:true
                            
                        }
                        
                        
                    },
                    
                    messages : {
                        
                        estados : {
                            required : "Selecione um estado"
                        },
                        
                        
                        nome: {
                            required: "Nome não pode estar em branco"
                        },
                        
                        mail : {
                            required: "Email não pode estar em branco"
                        },
                        
                        mail2 : {
                            required: "Email não pode estar em branco",
                            equalTo: "Email's são diferentes"
                        },
                        
                        
                        //                        fantasia: {
                        //                            required: "Nome Fantasia não pode estar em branco",
                        //                            remote:"Este nome já esta em uso :("
                        //                        },
                        
                        //                        password : {
                        //                            required: "Senha não pode estar em branco"  
                        //                        },
                        //                        
                        //                        
                        //                        confirmpassword:{
                        //                            required: "Senha não pode estar em branco",
                        //                            equalTo: "Senhas devem ser iguais"
                        //                        },
                        
                        n:{
                            number:"Este campo é numerico"
                        },
                        
                        rua:{
                            required:"Rua não pode estar em branco"
                            
                        },
                        
                        cep: {
                            
                            required:"CEP não pode estar em branco"
                        },
                        
                        cidade:{
                            
                            required:"Cidade não pode estar em branco"
                            
                        }
                        
                        //                        "pessoa.cpf" : {
                        //                            
                        //                            remote : "CPF já cadastrado em nossa base de dados! :)"
                        //                            
                        //                        }
                       
                    }
                });  
            }); 
            
            
           
        </script>  


        <script type="text/javascript">
   
            $(document).ready(function(){
                // Evento change no campo estados 
                $("select[name=estados]").change(function(){
                    // Exibimos no campo estados antes de concluirmos
                    $("select[name=cidade]").html('<option value="">Carregando...</option>');
                    // Exibimos no campo  antes de selecionamos a cidade, serve também em caso
                    // do usuario ja ter selecionado o tipo e resolveu trocar, com isso limpamos a
                    $.post("CarregaCiadades",
                    {estados:$(this).val()},
                    // Carregamos o resultado acima para o campo cidades
                    function(valor){
                        $("select[name=cidade]").html(valor);
                    }
                )
                })
               
            })
      
        </script>




        <title>Alterar Cadastro Vendedor</title>

    </head>

    <body>

        <div class="container">

            <%@include file="header.jsp" %>

            <ul class="breadcrumb">
                <li>
                    <a href="index.jsp">Inicio</a>
                    <span class="divider">/</span>
                </li>
                <li>
                    <a href="parceiro.jsp">Seja Nosso Parceiro</a>
                    <span class="divider">/</span>
                </li>

                <li class="active">
                    Cadastro Vendedor
                </li>
            </ul>


            <div class="page-header">
                <h1>Alterar Cadastro Vendedor<small> Net Lanche :)</small></h1>
            </div>


            <ul class="nav nav-tabs">
                <li class="active"><a href="#tab1" data-toggle="tab"><button class="btn-success">Pessoa Física</button></a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tab1">

                    <form method="post"  id="formfisica" action="ControlerUpdateVendedor" accept-charset="ISO-8859-1">

                        <input type="hidden" name="tipo" value="pf">

                        <div class="control-group">
                            <label class="control-label">Nome Fantasia:</label>
                            <div class="fieldgroup">
                                <input  class="span6" type="text" name="fantasia" placeholder="Genérico Lanches" id="fantasia" value="${vendedor.nomeFantasia}" disabled="" class="input-xlarge"  />
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Nome Completo:</label>
                            <div class="fieldgroup">
                                <input  class="span6" type="text" name="nome" placeholder="Seu Nome" id="nome" value="${vendedor.nome}" class="input-xlarge"  />
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="control-group">
                            <label class="control-label">CPF:</label>
                            <div class="fieldgroup">
                                <input type="text" name="pessoa.cpf" placeholder="000.000.000-00" id="cpf" value="${vendedor.cpf}" class="input-xlarge" disabled />
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Email:</label>
                            <div class="fieldgroup">
                                <input type="text" name="mail" placeholder="seuemail@mail.com" id="mail" value="<c:out value="${vendedor.mail}"/>"  class="input-xlarge"  />
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Confirme seu Email:</label>
                            <div class="fieldgroup">
                                <input type="text" name="mail2" placeholder="Confirme seu email aqui" id="mail2" value="" autocomplete='off' class="input-xlarge"  />
                            </div>
                        </div>

                        <div class="fieldgroup">
                            <label class="right">Estado:</label>
                            <select name="estados" id="estados">
                                <option value=""/>${estado.id}</option>
                                <option value="1">Acre</option>
                                <option value="2">Alagoas</option>
                                <option value="4">Amapá</option>
                                <option value="3">Amazonas</option>
                                <option value="5">Bahia</option>
                                <option value="6">Ceará</option>
                                <option value="7">Distrito Federal</option>
                                <option value="8">Espirito Santo</option>
                                <option value="9">Goiás</option>
                                <option value="10">Maranhão</option>
                                <option value="13">Mato Grosso</option>
                                <option value="12">Mato Grosso do Sul</option>
                                <option value="11">Minas Gerais</option>
                                <option value="14">Pará</option>
                                <option value="15">Paraiba</option>
                                <option value="18">Paraná</option>
                                <option value="16">Pernambuco</option>
                                <option value="17">Piauí</option>
                                <option value="19">Rio de Janeiro</option>
                                <option value="20">Rio Grande do Norte</option>
                                <option value="23">Rio Grande do Sul</option>
                                <option value="21">Rondônia</option>
                                <option value="22">Roraima</option>
                                <option value="24">Santa Catarina</option>
                                <option value="26">São Paulo</option>
                                <option value="25">Sergipe</option>
                                <option value="27">Tocantis</option>
                            </select>
                        </div>

                        <div class="fieldgroup">
                            <label class="right">Cidade:</label>
                            <select name="cidade">
                                <option value="${vendedor.endereco.cidade}" selected="selected">${vendedor.endereco.cidade}</option>
                            </select>

                        </div>

                        <div class="fieldgroup">
                            <label class="right ">Rua:</label>
                            <input  class="span6"type="text" name="rua"  placeholder="Sua Rua" id="rua" value="${vendedor.endereco.rua}"  />
                        </div>

                        <div class="fieldgroup">
                            <label class="right">Nº:</label>
                            <input  class="span1"type="text"  placeholder="000" name="n" value="${vendedor.endereco.numero}" />
                        </div>

                        <div class="fieldgroup">
                            <label class="right">Cep:</label>
                            <input class="span2" type="text" name="cep"  placeholder="000000-000" value="${vendedor.endereco.cep}" id="cep1"/><br />
                        </div>

                        <div class="control-group">
                            <div class="fieldgroup">
                                <input type="hidden" name="password" placeholder="*****" id="password" value="${vendedor.senha}" class="input-xlarge"  />
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="fieldgroup">
                                <input type="hidden" name="confirmpassword" placeholder="*****" id="confirmpassword" value="${vendedor.senha}" class="input-xlarge"  />
                            </div>
                        </div>

                        <input class="btn btn-large btn-info" type="submit" value="Aceito todos os termos e Criar conta!"/>

                    </form>

                </div>
                <div class="tab-pane" id="tab2">




                </div>
            </div>
        </div>



    </div>

</body>
</html>