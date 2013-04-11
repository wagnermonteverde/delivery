<%@page import="br.com.starsoft.social.controler.crudsProdutos.ListaProdutosVendedor"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>


        <meta charset="utf-8">
        <title>Area do Vendedor- Meus produtos</title>

        <%@include file="imports.jsp" %>
    </head>

    <body>

        <div class="container">

            <%@include file="header.jsp" %>

            <form class="form-horizontal">
                <fieldset>

                    <!-- Form Name -->
                    <legend><img src="img/logo.png" width="60" height="40"></legend>



                    <div class="tabbable"> <!-- Only required for left/right tabs -->
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1" data-toggle="tab"><button class="btn-success btn">Pessoa Física</button></a></li>
                            <li><a href="#tab2" data-toggle="tab"><button class="btn-success btn">Pessoa Fisica</button></a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab1">
                                <p>I'm in Section 1.</p>
                                <!-- Text input-->
                                <div class="control-group">
                                    <label class="control-label">Text Input</label>
                                    <div class="controls">
                                        <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="input-xlarge">
                                        <p class="help-block">help</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab2">
                                <p>Howdy, I'm in Section 2.</p>
                                <!-- Text input-->
                                <div class="control-group">
                                    <label class="control-label">Text Input</label>
                                    <div class="controls">
                                        <input id="textinput" name="textinput" type="text" placeholder="placeholder" class="input-xlarge">
                                        <p class="help-block">help</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>

    </body>
</html>