<%@page import="br.com.starsoft.social.model.logic.Upload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View</title>
    </head>
    <body>
        <%
            Upload up = new Upload(getServletContext().getRealPath("/files/"));
            String[] files = up.getAllImages();

                out.print(request.getParameter("namePerson"));
            for(int i = 0; i < files.length; i++){
                out.print(files[i]);
            }
            
        %>
    </body>
</html>
