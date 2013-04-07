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

        <%@include file="imports.jsp" %>

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
                    Perfil
                </li>
            </ul>


            <div class="container-narrow">
                <div class="masthead">
                    <ul class="nav nav-pills pull-right">
                        <li class="active">
                        </li>
                    </ul>
                </div>

                <h2 class="text-info">
                    <img class="img-circle" src="<c:out value="${usuario.fotoString}"/>">
                    &nbsp;<em>${usuario.name}  ${usuario.lastName}</em> <img class="pull-right top-block" src="img/Ulogo3.png" alt="Delivery ta na mesa!" width="500" height="80">
                </h2>
                <a class="btn btn-primary disabled">Perfil Vinculado ao Facebook :)</a>
                </br>
                </br>

                <p class="lead text-info">
                   <em>Perfil Delivery Social é uma Honra ter você conosco :)</em>
                </p>
                <div class="progress progress-info progress-striped">
                    <div class="bar" style="width: 100%"></div>
                </div>
                <hr>




                <!--  acordion-->
                <div class="container-fluid">  
                    <div class="accordion" id="accordion2">
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <a class="accordion-toggle btn-primary" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                                    Dados Pessoais
                                </a>
                            </div>
                            <div id="collapseOne" class="accordion-body collapse in">
                                <div class="accordion-inner">

                                    
                                    <table class="table table-striped">
                                        <tbody>
                                            <tr>
                                                <td class="span5">Nome: ${usuario.name}  ${usuario.lastName}</td>
                                            </tr>
                                            <tr>
                                                <td class="span5">Email: ${usuario.mail}</td>
                                            </tr>
<!--                                        <tr>
                                                <td class="span5">CPF: xxx.xxx.xxx-63</td>
                                            </tr>-->
                                            <tr>
                                                <td class="span5">Data Nascimento: </td>
                                            </tr>
                                            
                                        </tbody>


                                    </table>


                                </div>
                            </div>
                        </div>

                    </div>

                </div>

                <!-- acordion endereço  -->            


                <!--  acordion-->
                <div class="container-fluid">  
                    <div class="accordion" id="accordion3">
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <a class="accordion-toggle btn-success" data-toggle="collapse" data-parent="#accordion3" href="#collapset">
                                   Endereço
                                </a>
                            </div>
                            <div id="collapset" class="accordion-body collapse in">
                                <div class="accordion-inner">


                                    <table class="table table-striped">
                                        <tbody>
                                            <tr>
                                                <td class="span5">Rua: ${usuario.endereco.rua}</td>
                                            </tr>
                                            <tr>
                                                <td class="span5">Nº: ${usuario.endereco.numero}</td>
                                            </tr>
                                            <tr>
                                                <td class="span5">Cidade: ${usuario.endereco.cidade}</td>
                                            </tr>
                                            <tr>
                                                <td class="span5">Estado: ${usuario.endereco.uf}</td>
                                            </tr>
                                            <tr>
                                                <td class="span5">Cep: ${usuario.endereco.cep}</td>
                                            </tr>
                                            <tr>
                                                <td class="span5"> <a href="updateEndereco.jsp" class="btn btn-primary ">Alterar Endereço</a></td>
                                            </tr>
                                        </tbody>


                                    </table>



                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                                            
                                            
                   <!--  acordion pedidos concretizados-->
                <div class="container-fluid">  
                    <div class="accordion" id="accordion4">
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <a class="accordion-toggle btn-warning" data-toggle="collapse" data-parent="#accordion4" href="#collapsed">
                                   Pedidos Entregues (Finalizados) Clique para Abrir :)
                                </a>
                            </div>
                            <div id="collapsed" class="accordion-body collapse">
                                <div class="accordion-inner">


                                    <table class="table table-striped">
                                        <tbody>
                                            <tr>
                                                <td class="span5">Pedido 1</td>
                                            </tr>
                                            <tr>
                                                <td class="span5">Pedido 1</td>
                                            </tr>
                                            <tr>
                                                <td class="span5">Pedido 1</td>
                                            </tr>
                                            <tr>
                                                <td class="span5">Pedido 1</td>
                                            </tr>
                                            <tr>
                                                <td class="span5">Pedido 1</td>
                                            </tr>
                                            <tr>
                                                <td class="span5">Pedido 1</td>
                                            </tr>
                                            <tr>
                                                <td class="span5">Pedido 1</td>
                                            </tr>
                                           
                                        </tbody>


                                    </table>



                                </div>
                            </div>
                        </div>

                    </div>

                </div>                          


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

        <script type="text/javascript" src="js/jquery.js"></script>

    </body>
</html>
