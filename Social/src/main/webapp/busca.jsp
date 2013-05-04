
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${empty listaProdutos and empty param.isnull}" >
    <c:redirect url="PesquisaProdutos?pag=${param.pag}&busca=${param.busca}"/>
</c:if>
<!DOCTYPE html>
<html>
    <head>

        <style>

            body { 
                font-size: 100%; 
                color: #333; 
                background: #FFF; 
                font-family: Arial, Helvetica, sans-serif;
            }
            #pages {
                padding: 3px;
                text-align: center
            }
            #pages ul {
                list-style-type: none;
            }
            #pages li {
                float: left;
                display: inline;
                margin: 0 5px 0 0;
                display: block;
            }
            #pages li a {
                color: #88af3f;
                padding: 4px;
                border: 1px solid #ddd;
                text-decoration: none;
                float: left;
            }
            #pages li a:hover {
                color: #638425;
                background: #f1ffd6;
                border: 1px solid #85bd1e;
            }
            #pages li.nolink {
                color: #CCC;
                border: 1px solid #F3F3F3;
                padding: 4px;
            }
            #pages li.current {
                color: #FFF;
                border: 1px solid #b2e05d;
                padding: 4px;
                background: #b2e05d;
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

        <%@include file="imports.jsp" %>

        <title>Resultado da Busca</title>

    </head>
    <body>


        <div id="fb-root"></div>
        <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1&appId=444866598902145";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>



        <div class="container">



            <!--include barra menu--> 
            <%@include file="header.jsp" %>


            <ul class="breadcrumb">
                <li>
                    <a  href="#">Inicio</a>
                    <span class="active">/</span>
                </li>

            </ul>


            <!--  acordion-->
            <div class="container-fluid">  
                <div class="accordion" id="accordion1">
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle btn-success" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne">
                                Esta com Fome Faça Login E procure a comida mais perto de você com Nossa Busca por endereço
                            </a>
                        </div>
                        <div id="collapseOne" class="accordion-body collapse in">
                            <div class="accordion-inner">
                                <img src="img/Ulogo3.png" alt="Delivery ta na mesa!" width="" height="80" />

                                <c:choose>

                                    <c:when test="${usuario==null}">
                                        <a href="AutenticarFacebook" class="pull-right"><img src="img/facebook.png"></a>
                                        <!--<a href="AutenticarTwitter"class="pull-right"><img src="img/twitter.png"></a>-->
                                    </c:when>

                                    <c:otherwise>
                                        <form class="navbar-form pull-right" action="tumbail.jsp" method="POST">
                                            <input  name="textinput2" type="search" placeholder="Digite Aqui seu Endereço e veja as lojas perto de você!" class="span5">
                                        </form>
                                    </c:otherwise>

                                </c:choose>
                            </div>
                        </div>
                    </div>

                </div>

            </div>



            <div class="container-fluid">
                <div class="row-fluid">

                    <!-- left menu starts -->
                    <div class="span2 main-menu-span">
                        <div class="well nav-collapse sidebar-nav">
                            <img src="http://3.bp.blogspot.com/_fGnv-Lhb0xA/Sy46zh3kNkI/AAAAAAAAAEI/eGZrtFPB2A0/s400/Bob+logo+2.jpg" style="float: left" width="120" class="img-rounded">
                            <p>Cidade: </p>
                            <p>Reputação: </p>
                        </div><!--/.well -->
                    </div><!--/span-->
                    <!-- left menu ends -->

                    <noscript>
                    <div class="alert alert-block span10">
                        <h4 class="alert-heading">Warning!</h4>
                        <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
                    </div>
                    </noscript>

                    <div id="content" class="span10">
                        <!-- content starts -->

                        <div class="row-fluid sortable">
                            <div class="box span9">

                                <div class="box-content">
                                    <!--Todo conteudo deve ir nesta div-->
                                    <div class="box-content">
                                        <c:if test="${!empty param.isnull}" >
                                            <h4>Este vendedor ainda não possui produtos cadastrados</h4>
                                        </c:if>
                                        <c:forEach items="${listaProdutos}" var="produto" >

                                            <div class="<c:out value="${produto.id}" />" id="accordion2">
                                                <div class="accordion-group">
                                                    <div class="accordion-heading">
                                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#<c:out value="${produto.id}" />">
                                                            <img src="${produto.imagem}" style="float: left" width="100" class="img-rounded">
                                                            <h3><c:out value="${produto.nome}" />  <c:out value="${produto.id}" /></h3>
                                                            <p>Preço: R$ <c:out value="${produto.preco}" /></p>
                                                        </a>
                                                    </div>
                                                    <div id="<c:out value="${produto.id}" />" class="accordion-body collapse">
                                                        <div class="accordion-inner" style="background: #ececec">
                                                            <c:out value="${produto.descricao}" />
                                                            <p style="text-align: right"><img src="img/botao-comprar.png" alt="Pedir" /></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </c:forEach>
                                        <c:remove var="listaProdutos"/>
                                        

                                        <script language="JavaScript" type="text/javascript">
                                        muda();
                                        function muda(){
                                            classe = document.getElementById("<c:out value="${param.id}" />").className;
                                            if(classe == "accordion-body collapse"){

                                                document.getElementById("<c:out value="${param.id}" />").className = "accordion-body collapse in";
                                            }else{
                                                document.getElementById("<c:out value="${param.id}" />").className = "accordion-body collapse";
                                            }
                                        }
                                        </script>
                                        </table> 

                                    </div>
<div id="pages" style="text-align: center">
                                            <c:out value="${pagination}" escapeXml="false"/>
                                            <c:remove var="pagination"/>
                                        </div>

                                </div>
                            </div><!--/span-->

                            <div class="box span3">
                                <div class="box-header well" data-original-title>
                                    <h3>Futuro Carrinho...</h3>
                                    <div class="box-icon">
                                        <a href="#" class=""></i></a>
                                    </div>
                                </div>
                                <div class="box-content">
                                    <div id="ReloadThis"></div>          
                                </div>
                            </div><!--/span-->





                        </div><!--/row-->

                        <!-- content ends -->
                    </div><!--/#content.span10-->
                </div><!--/fluid-row-->

                <hr>



                <footer>
                    <p>© By Wagner Monteverde & Henrique Bartoski  Software  Email wagnermonteverde@outlook.com &  </p>  
                </footer>

            </div><!--/.fluid-container-->
            <!-- /container -->


            <%@include file="footer.jsp" %>

        </div>

        <script type="text/javascript" src="js/jquery.js"></script>

    </body>
</html>




















