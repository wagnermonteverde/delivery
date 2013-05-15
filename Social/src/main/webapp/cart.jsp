<%-- 
    Document   : cart
    Created on : 12/05/2013, 11:34:42
    Author     : wagner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="imports.jsp" %>

        <title>Carrinho</title>
    </head>
    <body>
        <!--include barra menu--> 
        <%@include file="header.jsp" %>


        <div class="container" style="width:60%">


            <h1>Pedido em Aberto</h1>

            <table class="table">
                <thead>
                    <tr>
                        <th>
                <h3>Pedido</h3>
                </th>
                Lanches do Zé  data Pedido 14/07/1983
                </tr>
                </thead>
                <tbody>
                   
                    <c:forEach>
                        <tr>
                            <td>Sandubão</td>
                            <td>Quantidade</td>
                            <td>
                                <input type="text" style="width: 45px; padding: 1px" value="0"> 
                            </td>
                            <td>Preço Unit</td>

                            <td>
                                R$ 10,00
                            </td>
                            <td>Total</td>

                            <td>

                            </td>
                            <td></td>

                            <td>
                                R$ 10,00
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
            <input type="buton" class="btn btn-success" value="Finalizar Pedido">
            <input type="buton" class="btn btn-info" value="Continuar Comprando">
            <input type="buton" class="btn btn-danger" value="Cancelar Pedido">


            <%@include file="footer.jsp" %>
            </body>
            </html>
