 <!-- navbar   -->

            <div class="navbar navbar-fixed-top navbar-inverse">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <a class="brand fluid" href="#" name="top" id="ze"><img src="img/logo.png" width="40" height="40"></a>
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


                            <c:if test="${usuario!=null}">


                                <ul class="nav pull-right">
                                    <li><a href="#" id="sair"><img  style=" width: 24px; height: 24px;" alt="0"src="<c:out value="${usuario.fotoString}"/>" /></a></li>

                                    <li class="dropdown ">
                                        <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="face"><c:out value="${ usuario.name }"/>_<c:out value="${ usuario.lastName }"/><strong class="caret"></strong></a>
                                        <div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
                                            <form method="post" action="login" accept-charset="UTF-8">
                                                <ul>
                                                    <li><a>Configura��es</a></li>
                                                    <li><a href="Logof">Sair</a></li>
                                            </form>
                                            </form>
                                            </form>
                                        </div>
                                    </li>
                                </ul>

                            </c:if>

                        </div>
                        <!--/.nav-collapse -->
                    </div>
                    <!--/.container-fluid -->
                </div>
                <!--/.navbar-inner -->
            </div>
            <!--/.navbar -->

            <!-- fim navbar   -->