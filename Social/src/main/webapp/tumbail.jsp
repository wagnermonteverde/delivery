<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <style>

            #ze {
                color:white;
            }

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

        <link rel="shortcut icon" href="img/favicon.ico">
        <link rel="alternate" type="application/rss+xml" title="Bootsnipp feed" href="http://bootsnipp.com/feed/" />
        <link rel="alternative" type="application/atom+xml" href="http://bootsnipp.com/feed/atom">
        <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-72x72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-114x114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-144x144-precomposed.png">
        <link href="css/bootstrap.min.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/bundles/bootstrapper/css/nav-fix.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/bundles/bootstrapper/css/bootstrap-responsive.min.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/css/prettify.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/css/bootsnipp.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/css/codemirror.css" media="all" type="text/css" rel="stylesheet">
        <link href="http://bootsnipp.com/css/jackedup.css" media="all" type="text/css" rel="stylesheet">
        <script src="http://bootsnipp.com/bundles/bootstrapper/js/jquery-1.8.2.min.js"></script>
        <script src="http://bootsnipp.com/bundles/bootstrapper/js/bootstrap.min.js"></script>
        <script src="http://bootsnipp.com/js/prettify.js"></script>
        <script src="http://bootsnipp.com/js/codemirror.js"></script>
        <script src="http://bootsnipp.com/js/humane.min.js"></script>

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
                <li>
                    <a href="tumbail_1.jsp">Lojas</a>
                    <span class="divider">/</span>
                </li>
                <li>
                    <a href="tumbail.jsp">Produtos</a>
                    <span class="active">/</span>
                </li>
            </ul>

            <!--Sorry About the Heavy CSS But its neaded for the components make it external for quicker load time :) -->
            <style>
                .pricing-table .plan {
                    border-radius: 5px;
                    text-align: center;
                    background-color: #f3f3f3;
                    -moz-box-shadow: 0 0 6px 2px #b0b2ab;
                    -webkit-box-shadow: 0 0 6px 2px #b0b2ab;
                    box-shadow: 0 0 6px 2px #b0b2ab;
                }

                .plan:hover {
                    background-color: #fff;
                    -moz-box-shadow: 0 0 12px 3px #b0b2ab;
                    -webkit-box-shadow: 0 0 12px 3px #b0b2ab;
                    box-shadow: 0 0 12px 3px #b0b2ab;
                }

                .plan {
                    padding: 20px;
                    color: #ff;
                    background-color: #5e5f59;
                    -moz-border-radius: 5px 5px 0 0;
                    -webkit-border-radius: 5px 5px 0 0;
                    border-radius: 5px 5px 0 0;
                }

                .plan-name-bronze {
                    padding: 20px;
                    color: #fff;
                    background-color: #665D1E;
                    -moz-border-radius: 5px 5px 0 0;
                    -webkit-border-radius: 5px 5px 0 0;
                    border-radius: 5px 5px 0 0;
                }

                .plan-name-silver {
                    padding: 20px;
                    color: #fff;
                    background-color: #C0C0C0;
                    -moz-border-radius: 5px 5px 0 0;
                    -webkit-border-radius: 5px 5px 0 0;
                    border-radius: 5px 5px 0 0;
                }

                .plan-name-gold {
                    padding: 20px;
                    color: #fff;
                    background-color: #FFD700;
                    -moz-border-radius: 5px 5px 0 0;
                    -webkit-border-radius: 5px 5px 0 0;
                    border-radius: 5px 5px 0 0;
                } 

                .pricing-table-bronze  {
                    padding: 20px;
                    color: #fff;
                    background-color: #f89406;
                    -moz-border-radius: 5px 5px 0 0;
                    -webkit-border-radius: 5px 5px 0 0;
                    border-radius: 5px 5px 0 0;
                }

                .pricing-table .plan .plan-name span {
                    font-size: 20px;
                }

                .pricing-table .plan ul {
                    list-style: none;
                    margin: 0;
                    -moz-border-radius: 0 0 5px 5px;
                    -webkit-border-radius: 0 0 5px 5px;
                    border-radius: 0 0 5px 5px;
                }

                .pricing-table .plan ul li.plan-feature {
                    padding: 15px 10px;
                    border-top: 1px solid #c5c8c0;
                }

                .pricing-three-column {
                    margin: 0 auto;
                    width: 80%;
                }

                .pricing-variable-height .plan {
                    float: none;
                    margin-left: 2%;
                    vertical-align: bottom;
                    display: inline-block;
                    zoom:1;
                    *display:inline;
                }

                .plan-mouseover .plan-name {
                    background-color: #4e9a06 !important;
                }

                .btn-plan-select {
                    padding: 8px 25px;
                    font-size: 18px;
                }
            </style>



            <!--  acordion-->
            <div class="container-fluid">  
                <div class="accordion" id="accordion1">
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle " data-toggle="collapse" data-parent="#accordion1" href="#collapseOne">
                                Carrinho de Compras clique para expandir <span class="text-error">Total R$ ${pedido.total}</span><img src="img/cart.png" style="width:3%; height:3%;">
                            </a>
                        </div>
                        <div id="collapseOne" class="accordion-body collapse ">
                            <div class="accordion-inner">

                                <div class="row-fluid pricing-table pricing-three-column">
                                    <div class="span12 plan">
                                        <div class="plan-name-bronze">
                                            <h3>Total</h3>
                                            <span>${pedido.total}</span>
                                        </div>
                                        <ul>
                                            <c:forEach var="iten" items="${pedido.itens}">
                                                <li class="plan-feature text-info">Descrição ${iten.produto.nome} | Quantidade  ${iten.quantidade}  | Preço  ${iten.produto.preco}  <a class="btn-small btn-danger">Deletar</a></li>
                                            </c:forEach>
                                            <li class="plan-feature"></li>
                                            <li class="plan-feature"><a href="#" class="btn btn-primary btn-plan-select"><i class="icon-white icon-ok"></i>FInalizar Pedido</a></li>
                                            <li class="plan-feature"><a href="#" class="btn btn-danger btn-plan-select"><i class="icon-white icon-ok"></i>Cancelar Pedido</a></li>
                                        </ul>
                                    </div>


                                </div>

                            </div>
                        </div>
                    </div>

                </div>

            </div>



            <!-- barra secundaria-->
            <div class="navbar ">
                <div class="navbar-inner ">
                    <button class="btn-large btn-primary" value="${vend.nomeFantasia}">${vend.nomeFantasia}</button>
                </div>
            </div>




            <!-- teste-->

            <ul class="thumbnails">  
                <c:if test="${!empty param.isnull}" >
                    <h4>Este vendedor ainda não possui produtos cadastrados</h4>
                </c:if>
                <c:forEach items="${listaProdutos}" var="produto" >

                    <li class="span2">  
                        <div class="thumbnail">  
                            <img src="${produto.imagem}" alt="product 1">  
                            <div class="caption">  
                                <p>${produto.nome}</br>R$ ${produto.preco}</p>  
                                <p><a href="PaginaPedido?idvendedor=${vend.id}&idproduto=${produto.id}&dusuario=${usuario.id}" class="btn-small btn-success">Detalhes</a> </p>    
                            </div>  
                        </div>  
                    </li>  

                </c:forEach>
            </ul> 


            <hr>  

            <hr>  

            <footer>  
                <p>© By Wagner Monteverde & Henrique Bartoski  Software </p>  
            </footer>  

            <!-- fim  teste-->


            <div id="example" class="modal hide fade in" style="display: none; ">

                <div class="modal-header">  
                    <a class="close" data-dismiss="modal">×</a>  
                    <h3>Produto Pra vc ver com Detalhes</h3>  
                </div>  
                <div class="modal-body">  
                    <img class="span4" src="img/pizza.jpg" alt="product 1"> 
                    <h4>Text in a modal</h4>  
                    <p>You can add some text here tstststststsssttsstststtssfdsdtsfdtsfdtsfdtsftdf.</p>                
                </div>  
                <div class="modal-footer">  
                    <a href="#" class="btn btn-success">Adicionar ao Carrinho</a>  
                    <a href="#" class="btn" data-dismiss="modal">Close</a>  
                </div> 

            </div>



            <!-- inclusão do footer -->
            <%@include file="footer.jsp" %>

            <!-- Exemplo toltip e popover -->
            <script src="js/bootstrap-tooltip.js"></script>  
            <script src="js/bootstrap-popover.js"></script>  
            <script>  
                $(function ()  
                { $("#example1").popover();  
                });  
                $(function ()  
                { $("#example2").popover();  
                });  
                $(function ()  
                { $("#example3").popover();  
                });  
                $(function ()  
                { $("#example4").popover();  
                });  
                $(function ()  
                { $("#example5").popover();  
                });  
                $(function ()  
                { $("#example6").popover();  
                });  
                $(function ()  
                { $("#example7").popover();  
                });  
            </script>  

    </body>
</html>
