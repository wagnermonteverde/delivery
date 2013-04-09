/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author henrique
 */
@WebServlet(name = "TestePaginaEmpresas", urlPatterns = {"/TestePaginaEmpresas"})
public class TestePaginaEmpresas extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            /* TODO output your page here. You may use following sample code. */
            out.write("\n");
            out.write("<!DOCTYPE html>\n");
            out.write("\n");
            out.write("<html>\n");
            out.write("    <head>\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("        <style>\n");
            out.write("\n");
            out.write("            #face {\n");
            out.write("                color:white;\n");
            out.write("            }\n");
            out.write("\n");
            out.write("            #sair {\n");
            out.write("                color:white;\n");
            out.write("            }\n");
            out.write("\n");
            out.write("            #topo {\n");
            out.write("                background-color:blue;\n");
            out.write("            }\n");
            out.write("        </style>\n");
            out.write("\n");
            out.write("        <link rel=\"shortcut icon\" href=\"img/favicon.ico\">\n");
            out.write("        <link rel=\"alternate\" type=\"application/rss+xml\" title=\"Bootsnipp feed\" href=\"http://bootsnipp.com/feed/\" />\n");
            out.write("        <link rel=\"alternative\" type=\"application/atom+xml\" href=\"http://bootsnipp.com/feed/atom\">\n");
            out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"apple-touch-icon-precomposed.png\">\n");
            out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"apple-touch-icon-72x72-precomposed.png\">\n");
            out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"apple-touch-icon-114x114-precomposed.png\">\n");
            out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"apple-touch-icon-144x144-precomposed.png\">\n");
            out.write("        <link href=\"css/bootstrap.min.css\" media=\"all\" type=\"text/css\" rel=\"stylesheet\">\n");
            out.write("        <link href=\"http://bootsnipp.com/bundles/bootstrapper/css/nav-fix.css\" media=\"all\" type=\"text/css\" rel=\"stylesheet\">\n");
            out.write("        <link href=\"http://bootsnipp.com/bundles/bootstrapper/css/bootstrap-responsive.min.css\" media=\"all\" type=\"text/css\" rel=\"stylesheet\">\n");
            out.write("        <link href=\"http://bootsnipp.com/css/prettify.css\" media=\"all\" type=\"text/css\" rel=\"stylesheet\">\n");
            out.write("        <link href=\"http://bootsnipp.com/css/bootsnipp.css\" media=\"all\" type=\"text/css\" rel=\"stylesheet\">\n");
            out.write("        <link href=\"http://bootsnipp.com/css/codemirror.css\" media=\"all\" type=\"text/css\" rel=\"stylesheet\">\n");
            out.write("        <link href=\"http://bootsnipp.com/css/jackedup.css\" media=\"all\" type=\"text/css\" rel=\"stylesheet\">\n");
            out.write("        <script src=\"http://bootsnipp.com/bundles/bootstrapper/js/jquery-1.8.2.min.js\"></script>\n");
            out.write("        <script src=\"http://bootsnipp.com/bundles/bootstrapper/js/bootstrap.min.js\"></script>\n");
            out.write("        <script src=\"http://bootsnipp.com/js/prettify.js\"></script>\n");
            out.write("        <script src=\"http://bootsnipp.com/js/codemirror.js\"></script>\n");
            out.write("        <script src=\"http://bootsnipp.com/js/humane.min.js\"></script>\n");
            out.write("        <script src=\"assets/js/bootstrap-lightbox.min.js\"></script>\n");
            out.write("\n");
            out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap-lightbox.min.css\">\n");
            out.write("\n");
            out.write("        <title>Promoção é Aqui</title>\n");
            out.write("\n");




            out.write("    </head>\n");
            out.write("    <body>\n");
            try {
                out.write(request.getParameter("nome"));
            } catch (Exception e) {
            }
            out.write("\n");
            out.write("        ");
            HttpSession sesion = request.getSession();
            out.write("\n");
            out.write("        <a href=\"#\" onclick=\"muda()\"; >dfdfdfs</a>\n");
            out.write("        <div class=\"container\">\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            for (int i = 0; i < 30; i++) {

                out.write("            <div class=\"" + i + "\" id=\"accordion2\">\n");
                out.write("                <div class=\"accordion-group\">\n");
                out.write("                    <div class=\"accordion-heading\">\n");
                out.write("                        <a class=\"accordion-toggle\" data-toggle=\"collapse\" data-parent=\"#accordion2\" href=\"#" + i + "\">\n");
                out.write("                            Collapsible Group Item \"" + i + "\"\n");
                out.write("                        </a>\n");
                out.write("                    </div>\n");
                out.write("                    <div id=\"" + i + "\" class=\"accordion-body collapse\">\n");
                out.write("                        <div class=\"accordion-inner\">\n");
                out.write("                            Anim pariatur cliche...\n");
                out.write("                        </div>\n");
                out.write("                    </div>\n");
                out.write("                </div>\n");
            }
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("<a href=\"#nome\"id=\"ee\">Texto</a>\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("            <!-- navbar   -->\n");
            out.write("\n");
            out.write("            <div class=\"navbar navbar-fixed-top navbar-inverse\">\n");
            out.write("                <div class=\"navbar-inner\">\n");
            out.write("                    <div class=\"container-fluid\">\n");
            out.write("                        <a class=\"btn btn-navbar\" data-toggle=\"collapse\" data-target=\".nav-collapse\">\n");
            out.write("                            <span class=\"icon-bar\"></span>\n");
            out.write("                            <span class=\"icon-bar\"></span>\n");
            out.write("                            <span class=\"icon-bar\"></span>\n");
            out.write("                        </a>\n");
            out.write("                        <a class=\"brand\" href=\"#\" name=\"top\" id=\"ze\">Promoção é Aqui!</a>\n");
            out.write("                        <div class=\"nav-collapse collapse\">\n");
            out.write("                            <ul class=\"nav\">\n");
            out.write("                                <li ><a href=\"index.jsp\"><i class=\"icon-home\"></i> Inicio</a></li>\n");
            out.write("                                <li class=\"divider-vertical\"></li>\n");
            out.write("                                <li ><a href=\"#\"><i class=\"icon-file\"></i> Lojas</a></li>\n");
            out.write("                                <li class=\"divider-vertical\"></li>\n");
            out.write("                                <li ><a href=\"#\"><i class=\"icon-envelope\"></i> Messages</a></li>\n");
            out.write("                                <li class=\"divider-vertical\"></li>\n");
            out.write("                                <li ><a href=\"#\"><i class=\"icon-shopping-cart\"></i> Carrinho</a></li>\n");
            out.write("                                <li class=\"divider-vertical\"></li>\n");
            out.write("                                <li ><a href=\"#\"><i class=\"icon-lock\"></i>Sobre nós</a></li>\n");
            out.write("                                <li class=\"divider-vertical\"></li>\n");
            out.write("                            </ul>\n");
            out.write("                            <ul class=\"nav pull-right\">\n");
            out.write("                                <li><a href=\"#\" id=\"sair\">Foto Aqui</a></li>\n");
            out.write("                                <li class=\"divider-vertical\"></li>\n");
            out.write("                                <li class=\"dropdown \">\n");
            out.write("                                    <a class=\"dropdown-toggle\" href=\"#\" data-toggle=\"dropdown\" id=\"face\">");
            out.print(sesion.getAttribute("usuario"));
            out.write("<strong class=\"caret\"></strong></a>\n");
            out.write("                                    <div class=\"dropdown-menu \" style=\"padding: 15px; padding-bottom: 0px;\">\n");
            out.write("                                        <form method=\"post\" action=\"login\" accept-charset=\"UTF-8\">\n");
            out.write("                                            <ul>\n");
            out.write("                                                <li><a>Configurações</a></li>\n");
            out.write("                                                <li><a>Sair</a></li>\n");
            out.write("                                            </ul>\n");
            out.write("\n");
            out.write("                                            <!-- <input style=\"margin-bottom: 15px;\" type=\"text\" placeholder=\"Usuario\" id=\"username\" name=\"username\">\n");
            out.write("                                             <input style=\"margin-bottom: 15px;\" type=\"password\" placeholder=\"Senha\" id=\"password\" name=\"password\">\n");
            out.write("                                             <input style=\"float: left; margin-right: 10px;\" type=\"checkbox\" name=\"remember-me\" id=\"remember-me\" value=\"1\">\n");
            out.write("                                             <label class=\"string optional\" for=\"user_remember_me\"> Remember me</label>\n");
            out.write("                                             <input class=\"btn btn-primary btn-block\" type=\"submit\" id=\"sign-in\" value=\"Sign In\">\n");
            out.write("                                             <label style=\"text-align:center;margin-top:5px\">ou</label>\n");
            out.write("                                             <input class=\"btn btn-primary btn-block\" type=\"button\" id=\"sign-in-google\" value=\"Entrar com Facebook\">\n");
            out.write("                                             <input class=\"btn btn-primary btn-block\" type=\"button\" id=\"sign-in-twitter\" value=\"Entrar com Twitter\">\n");
            out.write("                                            -->\n");
            out.write("                                        </form>\n");
            out.write("                                    </div>\n");
            out.write("                                </li>\n");
            out.write("                            </ul>\n");
            out.write("                        </div>\n");
            out.write("                        <!--/.nav-collapse -->\n");
            out.write("                    </div>\n");
            out.write("                    <!--/.container-fluid -->\n");
            out.write("                </div>\n");
            out.write("                <!--/.navbar-inner -->\n");
            out.write("            </div>\n");
            out.write("            <!--/.navbar -->\n");
            out.write("\n");
            out.write("            <!-- fim navbar   -->\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("            <!--Inicio do rodapé-->\n");
            out.write("\n");
            out.write("            <div class=\"navbar navbar-fixed-bottom navbar-inverse\">\n");
            out.write("                <div class=\"navbar-inner\">\n");
            out.write("                    <div class=\"container\">\n");
            out.write("                        <form class=\"navbar-form pull-right\">\n");
            out.write("                            <input name=\"textinput2\" type=\"search\" placeholder=\"busca\" class=\"span2\">\n");
            out.write("                        </form>\n");
            out.write("                        <a class=\"brand\" href=\"#\">\n");
            out.write("                            texto\n");
            out.write("                        </a>\n");
            out.write("                        <ul class=\"nav\">\n");
            out.write("                            <li>\n");
            out.write("                                <a href=\"#\">\n");
            out.write("                                    Home\n");
            out.write("                                </a>\n");
            out.write("                            </li>\n");
            out.write("                            <li>\n");
            out.write("                                <a href=\"#\">\n");
            out.write("                                    About\n");
            out.write("                                </a>\n");
            out.write("                            </li>\n");
            out.write("                            <li>\n");
            out.write("                                <a href=\"#\">\n");
            out.write("                                    Contact\n");
            out.write("                                </a>\n");
            out.write("                            </li>\n");
            out.write("                        </ul>\n");
            out.write("                    </div>\n");
            out.write("                </div>\n");
            out.write("            </div>\n");
            out.write("\n");
            out.write("            </br>\n");
            out.write("            </br>\n");
            out.write("            </br>\n");
            out.write("\n");
            out.write("            <script>\n");
            out.write("                jQuery(document).ready(function($) {\n");
            out.write("\n");
            out.write("                    $('#myCarousel').carousel({\n");
            out.write("                        interval: 5000\n");
            out.write("                    });\n");
            out.write("\n");
            out.write("                    $('#carousel-text').html($('#slide-content-0').html());\n");
            out.write("\n");
            out.write("                    //Handles the carousel thumbnails\n");
            out.write("                    $('[id^=carousel-selector-]').click( function(){\n");
            out.write("                        var id_selector = $(this).attr(\"id\");\n");
            out.write("                        var id = id_selector.substr(id_selector.length -1);\n");
            out.write("                        var id = parseInt(id);\n");
            out.write("                        $('#myCarousel').carousel(id);\n");
            out.write("                    });\n");
            out.write("\n");
            out.write("\n");
            out.write("                    // When the carousel slides, auto update the text\n");
            out.write("                    $('#myCarousel').on('slid', function (e) {\n");
            out.write("                        var id = $('.item.active').data('slide-number');\n");
            out.write("                        $('#carousel-text').html($('#slide-content-'+id).html());\n");
            out.write("                    });\n");
            out.write("\n");
            out.write("\n");
            out.write("                });\n");
            out.write("            </script>\n");
            out.write("\n");
            out.write("\n");
            out.write("    </body>\n");
            out.write("<script language=\"JavaScript\" type=\"text/javascript\">");
            String paramter = "";
            try {
                out.write("muda();");
                paramter = request.getParameter("nome").replace("\"", "");
                out.write("function muda(){");
                out.write("classe = document.getElementById('" + paramter + "').className;");
                out.write("if(classe == 'accordion-body collapse'){");

                out.write("document.getElementById('" + paramter + "').className = 'accordion-body collapse in';");
                out.write("}else{");
                out.write(" document.getElementById('" + paramter + "').className = 'accordion-body collapse';");
                out.write("}");
                out.write("}");
            } catch (Exception e) {
            }


            out.write("</script>");
            out.write("</html>\n");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
