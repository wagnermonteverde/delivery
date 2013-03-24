<%-- 
    Document   : testeUpload
    Created on : 23/03/2013, 13:45:19
    Author     : wagner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form id="formSendFile" 
              name="formSendFile" 
              method="post" 
              action="../UploadArquivo" 
              enctype="multipart/form-data">
            Name: <br/>
            <input name="namePerson" type="text" /><br/><br/>
            Picture:<br/>
            <input name="imagem" type="file" id="imagem" maxlength="60" /><br/><br/>
            <input type="submit" id="upload" name="upload" value="insert" />
        </form>
    </body>
</html>
