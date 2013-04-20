<%-- 
    Document   : login
    Created on : Apr 19, 2013, 9:45:41 PM
    Author     : wagner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="imports.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div class ="container-fluid">
        <%@include file="header.jsp" %>
        <form class="form-horizontal pull" action='' method="POST">
            <fieldset>
                <div id="legend">
                    <legend class="">Login Vendedor</legend>
                </div>
                <div class="control-group">
                    <!-- Username -->
                    <label class="control-label"  for="username">Username</label>
                    <div class="controls">
                        <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
                    </div>
                </div>

                <div class="control-group">
                    <!-- Password-->
                    <label class="control-label" for="password">Password</label>
                    <div class="controls">
                        <input type="password" id="password" name="password" placeholder="" class="input-xlarge">
                    </div>
                </div>


                <div class="control-group">
                    <!-- Button -->
                    <div class="controls">
                        <button class="btn btn-success">Login</button>
                    </div>
                </div>
            </fieldset>
        </form>
        <%@include file="footer.jsp" %>
        </div>

    </body>
</html>
