<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>

        <style>

            #ze {
                color:white;
            }
            #barrafixa2 {
                position: fixed;
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

        <%@include file="imports.jsp" %>


        <title>Net Lanche</title>

    </head>
    <body>


        <div id="fb-root"></div>
        <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1&appId=444866598902145";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>



        <div class="container">



            <!--include barra menu--> 
            <%@include file="header.jsp" %>


            <ul class="breadcrumb">
                <li>
                    <a  href="#">Inicio</a>
                    <span class="active">/</span>
                </li>
                
            </ul>


            <!--  acordion-->
            <!--<div class="container-fluid">-->  
                <div class="accordion" id="accordion2">
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle btn-success" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                                Esta com Fome Faça Login E procure a comida mais perto de você com Nossa Busca por endereço
                            </a>
                        </div>
                        <div id="collapseOne" class="accordion-body collapse in">
                            <div class="accordion-inner">
                                <img src="img/Ulogo3.png" alt="Delivery ta na mesa!" width="" height="80">
                                <img src="img/lema1.png" alt="Delivery ta na mesa!" width="" height="80">
                                
                                
                                <c:choose>

                                    <c:when test="${usuario==null}">
                                        <a href="AutenticarFacebook" class="pull-right"><img src="img/facebook.png"></a>
                                        <!--<a href="AutenticarTwitter"class="pull-right"><img src="img/twitter.png"></a>-->
                                    </c:when>

                                    <c:otherwise>
                                        <form class="navbar-form pull-right" action="tumbail_1.jsp" method="POST">
                                            <input  name="textinput2" type="search" placeholder="Digite Aqui seu Endereço e veja as lojas perto de você!" class="span5">
                                        </form>
                                    </c:otherwise>

                                </c:choose>
                            </div>
                        </div>
                    </div>

                </div>

            <!--</div>-->


            <!-- Fim acordion -->





            <!-- Main Area -->
            <div id="main_area">


                <!-- Slider -->
                <div class="row">


                    <div class="span12" id="slider">
                        <!-- Top part of the slider -->
                        <div class="row">
                            <div class="span6" id="carousel-bounding-box">

                                <div id="myCarousel" class="carousel slide">
                                    <!-- Carousel items -->
                                    <div class="carousel-inner">
                                        <div class="active item" data-slide-number="0"><img src="img/img/1.jpg" /></div>
                                        <div class="item" data-slide-number="1"><img src="img/img/2.jpg" /></div>
                                        <div class="item" data-slide-number="2"><img src="img/img/3.jpg" /></div>
                                        <div class="item" data-slide-number="3"><img src="img/img/4.jpg" /></div>
                                        <div class="item" data-slide-number="4"><img src="img/img/1.jpg" /></div>
                                        <div class="item" data-slide-number="5"><img src="img/img/2.jpg" /></div>
                                    </div>
                                    <!-- Carousel nav -->
                                    <a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
                                    <a class="carousel-control right" href="#myCarousel" data-slide="next">›</a>
                                </div>
                            </div>
                            <div class="span4" id="carousel-text">
                            </div>

                            <!-- sequencia  de 6 slides e produto lado do slide -->
                            <div style="display: none;" id="slide-content">
                                <div id="slide-content-0">
                                    <ul class="thumbnails">  

                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/pizza.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/pizza.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                    </ul>

                                </div>
                                <div id="slide-content-1">
                                    <ul class="thumbnails">  

                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/dog.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/dog.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                    </ul>
                                </div>
                                <div id="slide-content-2">
                                    <ul class="thumbnails">  
                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/pizza.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Calabresa</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/pizza.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Calabresa</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                    </ul>
                                </div>
                                <div id="slide-content-3">
                                    <ul class="thumbnails">  
                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/dog.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/dog.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                    </ul>
                                </div>
                                <div id="slide-content-4">
                                    <ul class="thumbnails">  

                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/pizza.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Frango Catupiri</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/pizza.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Frango Catupiri</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                    </ul>
                                </div>
                                <div id="slide-content-5">
                                    <ul class="thumbnails">  

                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/dog.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Especial</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                        <li class="span2">  
                                            <div class="thumbnail">  
                                                <img src="img/dog.jpg" alt="product 1">  
                                                <div class="caption">  
                                                    <p>Especial</br>R$ 29,90.</p>  
                                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                            </div>  
                                        </li>  
                                    </ul>
                                </div>
                            </div>

                            <!-- Produto canto direito topo do lado do slider  -->
                            <ul class="thumbnails">  
                                <li class="span2">  
                                    <div class="thumbnail">  
                                        <div class="caption">  
                                            <div class="fb-like" data-href="http://localhost:8084/Social" data-send="true" data-layout="box_count" data-width="450" data-show-faces="true" data-font="arial"></div>
                                            </br>
                                            <div> <a href="https://twitter.com/share" class="twitter-share-button" data-lang="pt" data-url="https://dev.twitter.com" data-text="FoodSocial Comida Rápida na internet sempre o local mais perto de você" data-count="horizontal">Tweet</a></div>
                                        </div>  
                                </li>  
                                <li class="span2">  
                                    <div class="thumbnail">  
                                        <div class="caption">  
                                            <p>Calabresa</br>R$ 29,90.</p>  
                                            <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                                    </div>  
                                </li>  
                            </ul>


                        </div>

                    </div>
                </div> <!--/Slider-->

                <div class="row hidden-phone" >
                    <div class="span12">
                        <!-- Bottom switcher of slider -->
                        <ul class="thumbnails">
                            <li class="span2">
                                <a class="thumbnail" id="carousel-selector-0">
                                    <img src="img/img1/1.jpg" />
                                </a>
                            </li>
                            <li class="span2">
                                <a class="thumbnail" id="carousel-selector-1">
                                    <img src="img/img1/1.jpg" />
                                </a>
                            </li>
                            <li class="span2">
                                <a class="thumbnail" id="carousel-selector-2">
                                    <img src="img/img1/1.jpg" />
                                </a>
                            </li>
                            <li class="span2">
                                <a class="thumbnail" id="carousel-selector-3">
                                    <img src="img/img1/1.jpg" />
                                </a>
                            </li>
                            <li class="span2">
                                <a class="thumbnail" id="carousel-selector-4">
                                    <img src="img/img1/1.jpg" />
                                </a>
                            </li>
                            <li class="span2">
                                <a class="thumbnail" id="carousel-selector-5">
                                    <img src="img/img1/1.jpg" />
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>



                <!-- fim main area -->   
            </div>




            <!-- barra secundaria-->
            <div class="navbar">
                <div class="navbar-inner">
                    <a><img src="img/promocao1.jpg"></a>
                    <!--                    <a href="AutenticarFacebook"class="pull-right"><img src="img/facebook.png"></a>
                                        <a href="AutenticarTwitter"class="pull-right"><img src="img/twitter.png"></a>-->

                    <ul class="nav">

                        <li>

                        </li>
                        <li>
                        </li>

                    </ul>
                </div>
            </div>
            <!-- fim  barra secundaria-->


            <!-- Grid de Lojas on line-->
            <div class="row">
                <div class="span12">
                    <ul class="thumbnails">  

                        <li class="span2">  
                            <div class="thumbnail">  
                                <img src="img/pizza.jpg" alt="product 1">  
                                <div class="caption">  
                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example1" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                            </div>  
                        </li>  
                        <li class="span2">  
                            <div class="thumbnail">  
                                <img src="img/pizza.jpg" alt="product 1">  
                                <div class="caption">  
                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example2" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                            </div>  
                        </li>  
                        <li class="span2">  
                            <div class="thumbnail">  
                                <img src="img/pizza.jpg" alt="product 1">  
                                <div class="caption">  
                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example3" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                            </div>  
                        </li>  
                        <li class="span2">  
                            <div class="thumbnail">  
                                <img src="img/pizza.jpg" alt="product 1">  
                                <div class="caption">  
                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example4" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                            </div>  
                        </li>  
                        <li class="span2">  
                            <div class="thumbnail">  
                                <img src="img/pizza.jpg" alt="product 1">  
                                <div class="caption">  
                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example5" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                            </div>  
                        </li>  
                        <li class="span2">  
                            <div class="thumbnail">  
                                <img src="img/pizza.jpg" alt="product 1">  
                                <div class="caption">  
                                    <p>Moda da Casa</br>R$ 29,90.</p>  
                                    <p><a data-toggle="modal" href="#example" class="btn-small btn-success">Detalhes</a> <a data-toggle="modal" href="#example" id="example5" class="btn-small btn-danger" rel="popover" data-content=" Adicione o produto ao seu carrinho!" data-original-title="Compre agora!"><i class="active icon-shopping-cart"></i></a> </p>                        </div>  
                            </div>  
                        </li>  


                    </ul> 

                </div>
            </div> 
            <!-- fim Grid lojas on line -->


            <hr>  

            <footer>  
                <p>© By Wagner Monteverde & Henrique Bartoski  Software  Email wagnermonteverde@outlook.com &  </p>  
            </footer> 

            <!-- fim container inicial-->
        </div >



        <!-- inclusão do footer -->
        <%@include file="footer.jsp" %>



        <!-- Modal -->
        <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel">Entre com seus dados:</h3>
            </div>
            <div class="modal-body">
                <form action="AutenticarFacebook" method="POST">
                    Rua<br />
                    <input type="text" name="rua" id="rua" value="" /><br />
                    Nº<br />
                    <input type="text" name="n" value="" /><br />
                    Cidade<br />
                    <input type="text" name="cidade" value="" /><br />
                    Estado<br />
                    <input type="text" name="estado" value="" /><br />
                    Cep<br />
                    <input type="text" name="cep" value="" /><br />
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
                    <button class="btn btn-primary" type="submit">Criar Conta</button>


                </form>

            </div>
            <!--            <div class="modal-footer">
                            <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                              <a href="AutenticarFacebook" class=\"pull-right\"><button class="btn btn-primary" type="submit">Save changes</button></a>
                            
                        </div>-->
        </div>

        <script>
        jQuery(document).ready(function($) {

            $('#myCarousel').carousel({
                interval: 10000
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
        <!-- Colapse acordion-->
        <script type="text/javascript" src="js/jquery.js"></script>
        <!-- sdk twitter-->
        <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>



    </body>
</html>
