<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>




        <style>

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
        <script src="assets/js/bootstrap-lightbox.min.js"></script>

        <link rel="stylesheet" href="css/bootstrap-lightbox.min.css">

        <title>Promoção é Aqui</title>

    </head>
    <body>

        <% HttpSession sesion = request.getSession();%>

        <div class="container">






            <!-- fim formulario   -->












            <!-- navbar   -->

            <div class="navbar navbar-fixed-top navbar-inverse">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <a class="brand" href="#" name="top" id="ze">Promoção é Aqui!</a>
                        <div class="nav-collapse collapse">
                            <ul class="nav">
                                <li ><a href="index.jsp"><i class="icon-home"></i> Inicio</a></li>
                                <li class="divider-vertical"></li>
                                <li ><a href="#"><i class="icon-file"></i> Lojas</a></li>
                                <li class="divider-vertical"></li>
                                <li ><a href="#"><i class="icon-envelope"></i> Messages</a></li>
                                <li class="divider-vertical"></li>
                                <li ><a href="#"><i class="icon-shopping-cart"></i> Carrinho</a></li>
                                <li class="divider-vertical"></li>
                                <li ><a href="#"><i class="icon-lock"></i>Sobre nós</a></li>
                                <li class="divider-vertical"></li>
                            </ul>
                            <ul class="nav pull-right">
                                <li><a href="#" id="sair">Foto Aqui</a></li>
                                <li class="divider-vertical"></li>
                                <li class="dropdown ">
                                    <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="face"><% out.print(sesion.getAttribute("usuario"));%><strong class="caret"></strong></a>
                                    <div class="dropdown-menu " style="padding: 15px; padding-bottom: 0px;">
                                        <form method="post" action="login" accept-charset="UTF-8">
                                            <ul>
                                                <li><a>Configurações</a></li>
                                                <li><a>Sair</a></li>
                                            </ul>

                                            <!-- <input style="margin-bottom: 15px;" type="text" placeholder="Usuario" id="username" name="username">
                                             <input style="margin-bottom: 15px;" type="password" placeholder="Senha" id="password" name="password">
                                             <input style="float: left; margin-right: 10px;" type="checkbox" name="remember-me" id="remember-me" value="1">
                                             <label class="string optional" for="user_remember_me"> Remember me</label>
                                             <input class="btn btn-primary btn-block" type="submit" id="sign-in" value="Sign In">
                                             <label style="text-align:center;margin-top:5px">ou</label>
                                             <input class="btn btn-primary btn-block" type="button" id="sign-in-google" value="Entrar com Facebook">
                                             <input class="btn btn-primary btn-block" type="button" id="sign-in-twitter" value="Entrar com Twitter">
                                            -->
                                        </form>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!--/.nav-collapse -->
                    </div>
                    <!--/.container-fluid -->
                </div>
                <!--/.navbar-inner -->
            </div>
            <!--/.navbar -->

            <!-- fim navbar   -->






            <div class="jumbotron masthead">
                <div class="container">
                    <h1>Bootstrap</h1>
                    <p>Sleek, intuitive, and powerful front-end framework for faster and easier web development.</p>
                    <p>
                        <a href="assets/bootstrap.zip" class="btn btn-primary btn-large" onclick="_gaq.push(['_trackEvent', 'Jumbotron actions', 'Download', 'Download 2.3.1']);">Download Bootstrap</a>
                    </p>
                    <ul class="masthead-links">
                        <li>
                            <a href="http://github.com/twitter/bootstrap" onclick="_gaq.push(['_trackEvent', 'Jumbotron actions', 'Jumbotron links', 'GitHub project']);">GitHub project</a>
                        </li>
                        <li>
                            <a href="./getting-started.html#examples" onclick="_gaq.push(['_trackEvent', 'Jumbotron actions', 'Jumbotron links', 'Examples']);">Examples</a>
                        </li>
                        <li>
                            <a href="./extend.html" onclick="_gaq.push(['_trackEvent', 'Jumbotron actions', 'Jumbotron links', 'Extend']);">Extend</a>
                        </li>
                        <li>
                            Version 2.3.1
                        </li>
                    </ul>
                </div>
            </div>



















            <!--Inicio do rodapé-->

            <div class="navbar navbar-fixed-bottom navbar-inverse">
                <div class="navbar-inner">
                    <div class="container">
                        <form class="navbar-form pull-right">
                            <input name="textinput2" type="search" placeholder="busca" class="span2">
                        </form>
                        <a class="brand" href="#">
                            texto
                        </a>
                        <ul class="nav">
                            <li>
                                <a href="#">
                                    Home
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    About
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Contact
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            </br>
            </br>
            </br>

            <script>
                jQuery(document).ready(function($) {

                    $('#myCarousel').carousel({
                        interval: 5000
                    });

                    $('#carousel-text').html($('#slide-content-0').html());

                    //Handles the carousel thumbnails
                    $('[id^=carousel-selector-]').click( function(){
                        var id_selector = $(this).attr("id");
                        var id = id_selector.substr(id_selector.length -1);
                        var id = parseInt(id);
                        $('#myCarousel').carousel(id);
                    });


                    // When the carousel slides, auto update the text
                    $('#myCarousel').on('slid', function (e) {
                        var id = $('.item.active').data('slide-number');
                        $('#carousel-text').html($('#slide-content-'+id).html());
                    });


                });
            </script>


    </body>
</html>
