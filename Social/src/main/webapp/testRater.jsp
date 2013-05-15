

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="imports.jsp" %>
        <script type="text/javascript" src="js/jquery.rater.js"></script>
        <link type="text/css" rel="stylesheet" href="style.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            $(function() {
                $('#testRater').rater({ postHref: 'Rater' });
                $.post('Rater', {dois:$(this).val()},null,null)
                
            });
            $(function() {
                $('#errorRater').rater({ postHref: 'Rater' });
            });
        </script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div id="testRater" class="stat">
            <label for="rating">Avalie</label>
            <input  name="dois" value="1"/>
                
            <div class="statVal">
                <span class="ui-rater">
                    <span class="ui-rater-starsOff" style="width:90px;"><span class="ui-rater-starsOn" style="width:100px"></span></span>
                    <span class="ui-rater-rating">1.0</span>&#160;(<span class="ui-rater-rateCount">0</span>)
                </span>
            </div>
        </div>
        

    </body>
</html>
