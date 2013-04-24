<%-- 
    Document   : formProdutos
    Created on : 17/03/2013, 13:53:26
    Author     : henrique
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Novo Produto</title>
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

        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <script type="text/javascript" src="../js/jquery.validate.min.js"></script>  
        <!-- acima as dependencias, e abaixo o meu javascript, e um exemplo -->  
        <script type="text/javascript" src="../js/util.validate.js"></script> 
        <script type="text/javascript" src="../js/jquery.maskedinput.js"></script>
        <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>

        <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- The fav icon -->
        <link rel="shortcut icon" href="img/favicon.ico">

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
                            <li><a class="ajax-link" href="index.jsp"><i class="icon-home"></i><span class="hidden-tablet"> Dashboard</span></a></li>
                            <!--<li><a class="ajax-link" href="form.html"><i class="icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>-->
                            <li><a class="ajax-link" href="produtos.jsp"><i class="icon-font"></i><span class="hidden-tablet"> Meus Produtos</span></a></li>
                        </ul>
                        <label id="for-is-ajax" class="hidden-tablet" for="is-ajax"><input id="is-ajax" type="checkbox"> Ajax on menu</label>
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
                                <a href="/index.jsp">Home</a> <span class="divider">/</span>
                            </li>
                            <li>
                                <a href="produtos.jsp">Meus Produtos</a><span class="divider">/</span>
                            </li>
                            <li>
                                <a href="#">Cadastrar novo produto</a>
                            </li>
                        </ul>
                    </div>

                    <div class="row-fluid sortable">
                        <div class="box span9">


                            <div class="row-fluid sortable">
                                <div class="box span12">
                                    <div class="box-header well" data-original-title>
                                        <h2><i class="icon-edit"></i>Editar Vendedor</h2>
                                        <div class="box-icon">
                                            <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                            <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                            <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                        </div>
                                    </div>



                                    <!-- form -->

                                    <div>

                                        <div class="tabbable"> <!-- Only required for left/right tabs -->
                                            <ul class="nav nav-tabs">
                                                <li class="active"><a href="#tab1" data-toggle="tab"><button class="btn-success">Pessoa Física</button></a></li>
                                                <li><a href="#tab2" data-toggle="tab"><button class="btn-success">Pessoa Jurídica</button></a></li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab1">

                                                    <form method="post"  id="formfisica" action="ControlerCadastroVendedor" accept-charset="ISO-8859-1">

                                                        <input type="hidden" name="tipo" value="pf">

                                                        <div class="control-group">
                                                            <label class="control-label">Nome Fantasia:</label>
                                                            <div class="fieldgroup">
                                                                <input  class="span6" type="text" name="fantasia" placeholder="Genérico Lanches" id="fantasia" value="" class="input-xlarge"  />
                                                            </div>
                                                        </div>

                                                        <div class="control-group">
                                                            <label class="control-label">Nome Completo:</label>
                                                            <div class="fieldgroup">
                                                                <input  class="span6" type="text" name="nome" placeholder="Seu Nome" id="nome" value="" class="input-xlarge"  />
                                                            </div>
                                                        </div>

                                                        <!-- Text input-->
                                                        <div class="control-group">
                                                            <label class="control-label">CPF:</label>
                                                            <div class="fieldgroup">
                                                                <input type="text" name="pessoa.cpf" placeholder="000.000.000-00" id="cpf" value="" class="input-xlarge"  />
                                                            </div>
                                                        </div>

                                                        <div class="control-group">
                                                            <label class="control-label">Email:</label>
                                                            <div class="fieldgroup">
                                                                <input type="text" name="mail" placeholder="seuemail@mail.com" id="mail" value="<c:out value="${param.mail}"/>" disabled class="input-xlarge"  />
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
                                                                <option value="">Escolha o Estado</option>
                                                                <option value="AC">Acre</option>
                                                                <option value="AL">Alagoas</option>
                                                                <option value="AP">Amapá</option>
                                                                <option value="AM">Amazonas</option>
                                                                <option value="BA">Bahia</option>
                                                                <option value="CE">Ceará</option>
                                                                <option value="DF">Distrito Federal</option>
                                                                <option value="ES">Espirito Santo</option>
                                                                <option value="GO">Goiás</option>
                                                                <option value="MA">Maranhão</option>
                                                                <option value="MT">Mato Grosso</option>
                                                                <option value="MS">Mato Grosso do Sul</option>
                                                                <option value="MG">Minas Gerais</option>
                                                                <option value="PA">Pará</option>
                                                                <option value="PB">Paraiba</option>
                                                                <option value="PR">Paraná</option>
                                                                <option value="PE">Pernambuco</option>
                                                                <option value="PI">Piauí</option>
                                                                <option value="RJ">Rio de Janeiro</option>
                                                                <option value="RN">Rio Grande do Norte</option>
                                                                <option value="RS">Rio Grande do Sul</option>
                                                                <option value="RO">Rondônia</option>
                                                                <option value="RR">Roraima</option>
                                                                <option value="SC">Santa Catarina</option>
                                                                <option value="SP">São Paulo</option>
                                                                <option value="SE">Sergipe</option>
                                                                <option value="TO">Tocantis</option>
                                                            </select>
                                                        </div>

                                                        <div class="fieldgroup">
                                                            <label class="right">Cidade:</label>
                                                            <input class="span6"type="text" name="cidade" placeholder="Sua cidade" id="cidade" value="" />
                                                        </div>

                                                        <div class="fieldgroup">
                                                            <label class="right ">Rua:</label>
                                                            <input  class="span6"type="text" name="rua"  placeholder="Sua Rua" id="rua" value=""  />
                                                        </div>

                                                        <div class="fieldgroup">
                                                            <label class="right">Nº:</label>
                                                            <input  class="span1"type="text"  placeholder="000" name="n" value="" />
                                                        </div>

                                                        <div class="fieldgroup">
                                                            <label class="right">Cep:</label>
                                                            <input class="span2" type="text" name="cep"  placeholder="000000-000" value="" id="cep1"/><br />
                                                        </div>

                                                        <div class="control-group">
                                                            <label class="control-label">Senha:</label>
                                                            <div class="fieldgroup">
                                                                <input type="password" name="password" placeholder="*****" id="password" value="" class="input-xlarge"  />
                                                            </div>
                                                        </div>

                                                        <div class="control-group">
                                                            <label class="control-label"> Confirme sua Senha:</label>
                                                            <div class="fieldgroup">
                                                                <input type="password" name="confirmpassword" placeholder="*****" id="confirmpassword" value="" class="input-xlarge"  />
                                                            </div>
                                                        </div>

                                                        <input class="btn btn-large btn-info" type="submit" value="Aceito todos os termos e Criar conta!"/>

                                                    </form>

                                                </div>
                                                <div class="tab-pane" id="tab2">
                                                    <!-- Text input-->
                                                    <div class="control-group">

                                                        <form method="post" name="formjuridica" id="formjuridica" action="ControlerCadastroVendedor" accept-charset="ISO-8859-1">

                                                            <input type="hidden" name="tipo" value="pj">

                                                            <div class="control-group">
                                                                <label class="control-label">Nome Fantasia:</label>
                                                                <div class="fieldgroup">
                                                                    <input  class="span6" type="text" name="fantasia" placeholder="Genérico Lanches" id="fantasia" value="" class="input-xlarge"  />
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label">Razão Social:</label>
                                                                <div class="fieldgroup">
                                                                    <input  class="span6" type="text" name="razao" placeholder="Cia & Cia LTDA" id="razao" value="" class="input-xlarge"  />
                                                                </div>
                                                            </div>

                                                            <!-- Text input-->
                                                            <div class="control-group">
                                                                <label class="control-label">CNPJ:</label>
                                                                <div class="fieldgroup">
                                                                    <input type="text" name="empresa.cnpj" placeholder="00.000.000/0000-00" id="cnpj" value="" class="input-xlarge"  />
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label">Email:</label>
                                                                <div class="fieldgroup">
                                                                    <input type="text" name="mail" placeholder="seuemail@mail.com" id="mail" value="<c:out value="${param.mail}"/>" disabled class="input-xlarge"  />
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
                                                                    <option value="">Escolha o Estado</option>
                                                                    <option value="AC">Acre</option>
                                                                    <option value="AL">Alagoas</option>
                                                                    <option value="AP">Amapá</option>
                                                                    <option value="AM">Amazonas</option>
                                                                    <option value="BA">Bahia</option>
                                                                    <option value="CE">Ceará</option>
                                                                    <option value="DF">Distrito Federal</option>
                                                                    <option value="ES">Espirito Santo</option>
                                                                    <option value="GO">Goiás</option>
                                                                    <option value="MA">Maranhão</option>
                                                                    <option value="MT">Mato Grosso</option>
                                                                    <option value="MS">Mato Grosso do Sul</option>
                                                                    <option value="MG">Minas Gerais</option>
                                                                    <option value="PA">Pará</option>
                                                                    <option value="PB">Paraiba</option>
                                                                    <option value="PR">Paraná</option>
                                                                    <option value="PE">Pernambuco</option>
                                                                    <option value="PI">Piauí</option>
                                                                    <option value="RJ">Rio de Janeiro</option>
                                                                    <option value="RN">Rio Grande do Norte</option>
                                                                    <option value="RS">Rio Grande do Sul</option>
                                                                    <option value="RO">Rondônia</option>
                                                                    <option value="RR">Roraima</option>
                                                                    <option value="SC">Santa Catarina</option>
                                                                    <option value="SP">São Paulo</option>
                                                                    <option value="SE">Sergipe</option>
                                                                    <option value="TO">Tocantis</option>
                                                                </select>
                                                            </div>

                                                            <div class="fieldgroup">
                                                                <label class="right">Cidade:</label>
                                                                <input class="span6"type="text" name="cidade"  placeholder="Sua cidade" id="cidade" value="" />
                                                            </div>

                                                            <div class="fieldgroup">
                                                                <label class="right ">Rua:</label>
                                                                <input  class="span6"type="text" name="rua" placeholder="Sua Rua" id="rua" value=""  />
                                                            </div>

                                                            <div class="fieldgroup">
                                                                <label class="right">Nº:</label>
                                                                <input  class="span1"type="text" name="n" placeholder="000" value="" />
                                                            </div>

                                                            <div class="fieldgroup">
                                                                <label class="right">Cep:</label>
                                                                <input class="span2" type="text" name="cep" placeholder="000000-000" value="" id="cep"/><br />
                                                            </div>


                                                            <div class="control-group">
                                                                <label class="control-label">Senha:</label>
                                                                <div class="fieldgroup">
                                                                    <input type="password" name="password1" placeholder="*****" id="password1" value="" class="input-xlarge"  />
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label class="control-label"> Confirme sua Senha:</label>
                                                                <div class="fieldgroup">
                                                                    <input type="password" name="confirmpassword" placeholder="*****" id="confirmpassword" value="" class="input-xlarge"  />
                                                                </div>
                                                            </div>


                                                            <input class="btn btn-large btn-info" type="submit" value="Aceito todos os termos e Criar conta!"/>

                                                        </form>



                                                    </div>
                                                </div>
                                            </div>



                                        </div>

                                    </div>








                                    <!-- form -->


                                </div>
                            </div><!--/span-->

                        </div><!--/row-->

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




</body>
</html>
