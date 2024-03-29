<%-- 
    Document   : produtos
    Created on : 17/03/2013, 16:44:46
    Author     : henrique
--%>
<%@page import="br.com.starsoft.social.controler.crudsProdutos.ListaProdutosVendedor"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${empty listaProdutos and empty param.isnull}" >
    <c:redirect url="../ListaProdutosVendedor"/>
    <%--
    response.sendRedirect("../ListaProdutosVendedor");
    --%>
</c:if>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!--
                Charisma v1.0.0

                Copyright 2012 Muhammad Usman
                Licensed under the Apache License v2.0
                http://www.apache.org/licenses/LICENSE-2.0

                http://usman.it
                http://twitter.com/halalit_usman
        -->
        <meta charset="utf-8">
        <title>Area do Vendedor- Meus produtos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
        <meta name="author" content="Muhammad Usman">

        <!-- The styles -->
        <link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
        <style type="text/css">
            body {
                padding-bottom: 40px;
            }
            .sidebar-nav {
                padding: 9px 0;
            }
        </style>
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
        <link href="css/charisma-app.css" rel="stylesheet">
        <link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
        <link href='css/fullcalendar.css' rel='stylesheet'>
        <link href='css/fullcalendar.print.css' rel='stylesheet'  media='print'>
        <link href='css/chosen.css' rel='stylesheet'>
        <link href='css/uniform.default.css' rel='stylesheet'>
        <link href='css/colorbox.css' rel='stylesheet'>
        <link href='css/jquery.cleditor.css' rel='stylesheet'>
        <link href='css/jquery.noty.css' rel='stylesheet'>
        <link href='css/noty_theme_default.css' rel='stylesheet'>
        <link href='css/elfinder.min.css' rel='stylesheet'>
        <link href='css/elfinder.theme.css' rel='stylesheet'>
        <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
        <link href='css/opa-icons.css' rel='stylesheet'>
        <link href='css/uploadify.css' rel='stylesheet'>

        <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- The fav icon -->
        <link rel="shortcut icon" href="img/favicon.ico">


        <script type="text/javascript">
            function Ajax(){
                var xmlHttp;
                try{    
                    xmlHttp=new XMLHttpRequest();// Firefox, Opera 8.0+, Safari
                }
                catch (e){
                    try{
                        xmlHttp=new ActiveXObject("Msxml2.XMLHTTP"); // Internet Explorer
                    }
                    catch (e){
                        try{
                            xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
                        }
                        catch (e){
                            alert("No AJAX!?");
                            return false;
                        }
                    }
                }

                xmlHttp.onreadystatechange=function(){
                    if(xmlHttp.readyState==4){
                        document.getElementById('ReloadThis').innerHTML=xmlHttp.responseText;
                        setTimeout('Ajax()',1000);
                    }
                }
                xmlHttp.open("GET","../AtualizaPedidosVendedor",true); // aqui configuramos o arquivo
                xmlHttp.send(null);
            }

            window.onload=function(){
                setTimeout('Ajax()',1000); // aqui o tempo entre uma atualização e outra
            }
        </script>

    </head>

    <body>
        <!-- topbar starts -->
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="index.html"> <img alt="Charisma Logo" src="img/logo20.png" /> <span>Charisma</span></a>

                    <!-- theme selector starts -->
                    <div class="btn-group pull-right theme-container" >
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-tint"></i><span class="hidden-phone"> Change Theme / Skin</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" id="themes">
                            <li><a data-value="classic" href="#"><i class="icon-blank"></i> Classic</a></li>
                            <li><a data-value="cerulean" href="#"><i class="icon-blank"></i> Cerulean</a></li>
                            <li><a data-value="cyborg" href="#"><i class="icon-blank"></i> Cyborg</a></li>
                            <li><a data-value="redy" href="#"><i class="icon-blank"></i> Redy</a></li>
                            <li><a data-value="journal" href="#"><i class="icon-blank"></i> Journal</a></li>
                            <li><a data-value="simplex" href="#"><i class="icon-blank"></i> Simplex</a></li>
                            <li><a data-value="slate" href="#"><i class="icon-blank"></i> Slate</a></li>
                            <li><a data-value="spacelab" href="#"><i class="icon-blank"></i> Spacelab</a></li>
                            <li><a data-value="united" href="#"><i class="icon-blank"></i> United</a></li>
                        </ul>
                    </div>
                    <!-- theme selector ends -->

                    <!-- user dropdown starts -->
                    <div class="btn-group pull-right" >
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-user"></i><span class="hidden-phone"> admin</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Profile</a></li>
                            <li class="divider"></li>
                            <li><a href="login.html">Logout</a></li>
                        </ul>
                    </div>
                    <!-- user dropdown ends -->

                    <div class="top-nav nav-collapse">
                        <ul class="nav">
                            <li><a href="#">Visit Site</a></li>
                            <li>
                                <form class="navbar-search pull-left">
                                    <input placeholder="Search" class="search-query span2" name="query" type="text">
                                </form>
                            </li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>

        </div>
        <!-- topbar ends -->
        <div class="container-fluid">
            <div class="row-fluid">

                <!-- left menu starts -->
                <div class="span2 main-menu-span">
                    <div class="well nav-collapse sidebar-nav">
                        <ul class="nav nav-tabs nav-stacked main-menu">
                            <li class="nav-header hidden-tablet">Menu</li>
                            <li><a class="ajax-link" href="index.jsp"><i class="icon-font"></i><span class="hidden-tablet"> Dashboard</span></a></li>
                            <li><a class="ajax-link" href="../ListaProdutosVendedor"><i class="icon-home"></i><span class="hidden-tablet"> Meus Produtos</span></a></li>
                        </ul>
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

                    <div>
                        <ul class="breadcrumb">
                            <li>
                                <a href="index.jsp">Home</a> <span class="divider">/</span>
                            </li>
                            <li>
                                <a href="#">Meus Produtos</a>
                            </li>
                        </ul>
                    </div>

                    <div class="row-fluid sortable">
                        <div class="box span9">
                            <div class="box-header well" data-original-title>
                                <h2><i class="icon-cog"></i> Meus Produtos</h2>
                                <div style="text-align: right">
                                    <a class="btn btn-success" href="formProdutos.jsp" />
                                    <i class="icon-zoom-in icon-white"></i>  
                                    Novo Produto                                            
                                    </a>
                                </div>

                            </div>
                            <div class="box-content">
                                <!--Todo conteudo deve ir nesta div-->

                                <div class="box-content">
                                    <table class="table table-striped table-bordered bootstrap-datatable datatable">
                                        <thead>
                                            <tr>
                                                <th>Produto</th>
                                                <th>Preço</th>
                                                <th>Categoria</th>
                                                <th>Ação</th>
                                            </tr>
                                        </thead>   
                                        <tbody>
                                            <c:out value="${empty listaProdutos} and ${!empty param.isnull}" />
                                            <c:forEach items="${vendedor.listaProdutos}" var="produto" >
                                                <tr>
                                                    <td><c:out value="${produto.nome}" /></td>
                                                    <td class="center">R$ <c:out value="${produto.preco}" /></td>
                                                    <td class="center">
                                                        <span class="label"><c:out value="${produto.categoria}" /></span>
                                                    </td>
                                                    <td class="center">
                                                        <a class="btn btn-success" href="../empresa.jsp?id=<c:out value="${produto.id}" />" />
                                                        <i class="icon-zoom-in icon-white"></i>  
                                                        Ver                                            
                                                        </a>
                                                        <a class="btn btn-info" href="../FindProtutoForEdit?id=<c:out value="${produto.id}" />">
                                                            <i class="icon-edit icon-white"></i>  
                                                            Editar                                            
                                                        </a>
                                                        <a class="btn btn-danger" href="../RemoveProdudos?id=<c:out value="${produto.id}" />">
                                                            <i class="icon-trash icon-white"></i> 
                                                            Apagar
                                                        </a>
                                                    </td>
                                                </tr> 


                                            </c:forEach>
                                            <c:remove var="listaProdutos"/>



                                        </tbody>
                                    </table>            
                                </div>


                            </div>
                        </div><!--/span-->

                        <div class="box span3">
                            <div class="box-header well" data-original-title>
                                <h3>Pedidos</h3>
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

            <div class="modal hide fade" id="myModal">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h3>Settings</h3>
                </div>
                <div class="modal-body">
                    <p>Here settings can be configured...</p>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn" data-dismiss="modal">Close</a>
                    <a href="#" class="btn btn-primary">Save changes</a>
                </div>
            </div>

            <footer>
                <p class="pull-left">&copy; <a href="http://usman.it" target="_blank">Muhammad Usman</a> 2012</p>
                <p class="pull-right">Powered by: <a href="http://usman.it/free-responsive-admin-template">Charisma</a></p>
            </footer>

        </div><!--/.fluid-container-->

        <!-- external javascript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <!-- jQuery -->
        <script src="js/jquery-1.7.2.min.js"></script>
        <!-- jQuery UI -->
        <script src="js/jquery-ui-1.8.21.custom.min.js"></script>
        <!-- transition / effect library -->
        <script src="js/bootstrap-transition.js"></script>
        <!-- alert enhancer library -->
        <script src="js/bootstrap-alert.js"></script>
        <!-- modal / dialog library -->
        <script src="js/bootstrap-modal.js"></script>
        <!-- custom dropdown library -->
        <script src="js/bootstrap-dropdown.js"></script>
        <!-- scrolspy library -->
        <script src="js/bootstrap-scrollspy.js"></script>
        <!-- library for creating tabs -->
        <script src="js/bootstrap-tab.js"></script>
        <!-- library for advanced tooltip -->
        <script src="js/bootstrap-tooltip.js"></script>
        <!-- popover effect library -->
        <script src="js/bootstrap-popover.js"></script>
        <!-- button enhancer library -->
        <script src="js/bootstrap-button.js"></script>
        <!-- accordion library (optional, not used in demo) -->
        <script src="js/bootstrap-collapse.js"></script>
        <!-- carousel slideshow library (optional, not used in demo) -->
        <script src="js/bootstrap-carousel.js"></script>
        <!-- autocomplete library -->
        <script src="js/bootstrap-typeahead.js"></script>
        <!-- tour library -->
        <script src="js/bootstrap-tour.js"></script>
        <!-- library for cookie management -->
        <script src="js/jquery.cookie.js"></script>
        <!-- calander plugin -->
        <script src='js/fullcalendar.min.js'></script>
        <!-- data table plugin -->
        <script src='js/jquery.dataTables.min.js'></script>

        <!-- chart libraries start -->
        <script src="js/excanvas.js"></script>
        <script src="js/jquery.flot.min.js"></script>
        <script src="js/jquery.flot.pie.min.js"></script>
        <script src="js/jquery.flot.stack.js"></script>
        <script src="js/jquery.flot.resize.min.js"></script>
        <!-- chart libraries end -->

        <!-- select or dropdown enhancer -->
        <script src="js/jquery.chosen.min.js"></script>
        <!-- checkbox, radio, and file input styler -->
        <script src="js/jquery.uniform.min.js"></script>
        <!-- plugin for gallery image view -->
        <script src="js/jquery.colorbox.min.js"></script>
        <!-- rich text editor library -->
        <script src="js/jquery.cleditor.min.js"></script>
        <!-- notification plugin -->
        <script src="js/jquery.noty.js"></script>
        <!-- file manager library -->
        <script src="js/jquery.elfinder.min.js"></script>
        <!-- star rating plugin -->
        <script src="js/jquery.raty.min.js"></script>
        <!-- for iOS style toggle switch -->
        <script src="js/jquery.iphone.toggle.js"></script>
        <!-- autogrowing textarea plugin -->
        <script src="js/jquery.autogrow-textarea.js"></script>
        <!-- multiple file upload plugin -->
        <script src="js/jquery.uploadify-3.1.min.js"></script>
        <!-- history.js for cross-browser state change on ajax -->
        <script src="js/jquery.history.js"></script>
        <!-- application script for Charisma demo -->
        <script src="js/charisma.js"></script>


    </body>
</html>



