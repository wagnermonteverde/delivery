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
                    <a href="#">Produtos</a>
                    <span class="active">/</span>
                </li>
                
            </ul>

            <!-- barra secundaria-->
            <div class="navbar">
                <div class="navbar-inner">
                    <a><img src="img/promocao1.jpg"></a>
<!--                    <a href="AutenticarFacebook" class="pull-right"><img src="img/facebook.png"></a>
                    <a href="AutenticarTwitter" class="pull-right"><img src="img/twitter.png"></a>-->

                    <ul class="nav">

                        <li>

                        </li>
                        <li>
                        </li>

                    </ul>


                    <!--  botao dois -->
                </div>
            </div>




            <!-- teste-->

            <ul class="thumbnails">  

                <li class="span2">  
                    <div class="thumbnail">  
                        <img src="img/pizza.jpg" alt="product 1">  
                        <div class="caption">  
                            <p>Moda da Casa</br>R$ 29,90.</p>  
                            <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a>. <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!">+<i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                    </div>  
                </li>  
                <li class="span2">  
                    <div class="thumbnail">  
                        <img src="img/pizza.jpg" alt="product 1">  
                        <div class="caption">  
                            <p>Moda da Casa</br>R$ 29,90.</p>  
                            <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a>. <a data-toggle="modal" href="#example" id="example2" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!">+<i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                    </div>  
                </li>  
                <li class="span2">  
                    <div class="thumbnail">  
                        <img src="img/pizza.jpg" alt="product 1">  
                        <div class="caption">  
                            <p>Moda da Casa</br>R$ 29,90.</p>  
                            <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a>. <a data-toggle="modal" href="#example" id="example3" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!">+<i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                    </div>  
                </li>  
                <li class="span2">  
                    <div class="thumbnail">  
                        <img src="img/pizza.jpg" alt="product 1">  
                        <div class="caption">  
                            <p>Moda da Casa</br>R$ 29,90.</p>  
                            <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a>. <a data-toggle="modal" href="#example" id="example4" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!">+<i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                    </div>  
                </li>  
                <li class="span2">  
                    <div class="thumbnail">  
                        <img src="img/pizza.jpg" alt="product 1">  
                        <div class="caption">  
                            <p>Moda da Casa</br>R$ 29,90.</p>  
                            <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a>. <a data-toggle="modal" href="#example" id="example5" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!">+<i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                    </div>  
                </li>  
                <li class="span2">  
                    <div class="thumbnail">  
                        <img src="img/pizza.jpg" alt="product 1">  
                        <div class="caption">  
                            <p>Moda da Casa</br>R$ 29,90.</p>  
                            <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a>. <a data-toggle="modal" href="#example" id="example6" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!">+<i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                    </div>  
                </li>  

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
