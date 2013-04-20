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
                                <li class="active"><a href="index.jsp">Net Lanche</a></li>
                                <li class="divider-vertical"></li>
                                <li class="active"><a href="index.jsp"><i class="icon-home" ></i> Inicio</a></li>
                                <li class="divider-vertical"></li>
                                <li class="active" ><a href="#"><i class="icon-file "></i> Lojas</a></li>
                                <li class="divider-vertical"></li>
                                <li class="active"><a href="login.jsp"><i class="icon-cog "></i>Vendedor</a></li>
                                <li class="divider-vertical"></li>
                                <li class="active"><a href="parceiro.jsp"><i class="icon-globe "></i> Seja Nosso Parceiro</a></li>
                                <li class="divider-vertical"></li>
                            </ul>


                            <c:if test="${usuario!=null}">


                                <ul class="nav pull-right">
                                    <li><a href="#" id="sair"><img  style=" width: 24px; height: 24px;" alt="0"src="${usuario.fotoString}" /></a></li>

                                    <li class="dropdown ">
                                        <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="face"><c:out value="${ usuario.name }"/><c:out value="${ usuario.lastName }"/><strong class="caret"></strong></a>
                                        <div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
                                            <form method="post" action="login" accept-charset="UTF-8">
                                                <ul>
                                                    <li><a href="perfil.jsp">Perfil</a></li>
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
