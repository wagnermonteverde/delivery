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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
        <script src="js/bootstrap-modal.js"></script> 
        <link rel="stylesheet" href="css/bootstrap-lightbox.min.css">

        <title>Promoção é Aqui</title>

    </head>
    <body>


        <div class="container">



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
                            </ul>
                            <ul class="nav pull-right">
                                <li><a href="#" id="sair"><img  style=" width: 24px; height: 24px;" alt="0"src=""  /></a></li>
                                <li class="dropdown ">
                                    <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="face"><strong class="caret"></strong></a>
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


            <!-- barra secundaria-->
            <div class="navbar">
                <div class="navbar-inner">
                    <a><img src="img/promocao1.jpg"></a>
                    <a href="AutenticarFacebook" class="pull-right"><img src="img/facebook.png"></a>
                    <a href="AutenticarTwitter" class="pull-right"><img src="img/twitter.png"></a>

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
