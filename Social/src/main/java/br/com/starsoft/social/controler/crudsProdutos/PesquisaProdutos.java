/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.controler.crudsProdutos;

import br.com.starsoft.social.model.beans.Location;
import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.conf.UrlAplication;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOProduto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
@WebServlet(name = "PesquisaProdutos", urlPatterns = {"/PesquisaProdutos"})
public class PesquisaProdutos extends HttpServlet {

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

            HttpSession session = request.getSession();


            String busca = request.getParameter("busca");
            int pag = Integer.parseInt(request.getParameter("pag"));


            DAOProduto dao = new DAOProduto(Produtos.class);


            List<Produtos> lista = dao.listaTodos();
            Location location = null;

            Usuario usuario = null;

            usuario = (Usuario) session.getAttribute("usuario");
            location = usuario.getEndereco().getLocation();
            if (usuario == null) {
                response.sendRedirect(UrlAplication.getUrlAplicacao() + "login.jsp");

            }




            List<Produtos> listaProdutos = dao.buscaPaginada((pag - 1) * 10, pag * 10, location, busca);



            int size = lista.size();


//         Define o a quantidade de páginas da pesquisa
            int nPag = 0;
            if (size % 10 != 0) {
                nPag = 1 + size / 10;
            } else {
                nPag = size / 10;
            }



//          Monta a paginação

            String paginacao = "<ul>\n"
                    + "                                                <li><a href=\"PesquisaProdutos?pag=1&busca=" + busca + "\">« Primeira Página</a></li>\n";

            for (int i = 1; i < nPag + 1; i++) {


                if (pag - 2 <= 0 && i <= 5) {
                    if (pag == i) {
                        paginacao += "                                                <li class=\"current\">" + i + "</li>\n";

                    } else {
                        paginacao += "                                                <li><a href=\"PesquisaProdutos?pag=" + i + "&busca=" + busca + "\">" + i + "</a></li>\n";
                    }
                } else if (i >= size - 3) {
                    if (pag == i) {
                        paginacao += "                                                <li class=\"current\">" + i + "</li>\n";

                    } else {
                        paginacao += "                                                <li><a href=\"PesquisaProdutos?pag=" + i + "&busca=" + busca + "\">" + i + "</a></li>\n";
                    }
                } else if (i >= pag - 2 && i <= pag + 2) {
                    if (pag == i) {
                        paginacao += "                                                <li class=\"current\">" + i + "</li>\n";

                    } else {
                        paginacao += "                                                <li><a href=\"PesquisaProdutos?pag=" + i + "&busca=" + busca + "\">" + i + "</a></li>\n";
                    }
                }






            }
            paginacao += "                                                <li><a href=\"PesquisaProdutos?pag=" + nPag + "&busca=" + busca + "\">Ultima Página »</a></li>\n"
                    + "                                            </ul>";



            session.setAttribute("listaProdutos", listaProdutos);
            session.setAttribute("pagination", paginacao);
//      
            if (!listaProdutos.isEmpty()) {
                response.sendRedirect(UrlAplication.getUrlAplicacao() + "busca.jsp?busca=" + busca + "&pag=" + pag);
            } else {
                response.sendRedirect(UrlAplication.getUrlAplicacao() + "busca.jsp?isnull=true");
            }
        } catch (Exception e) {
            /*
             Usuario não presente na sessão
             não é possivel realizar a pesquisa
             o visitante é redirecionado a pagina de login
             */
            response.sendRedirect(UrlAplication.getUrlAplicacao() + "login.jsp");
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
