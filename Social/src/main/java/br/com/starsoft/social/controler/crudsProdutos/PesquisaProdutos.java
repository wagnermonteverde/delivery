/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.controler.crudsProdutos;

import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.conf.UrlAplication;
import br.com.starsoft.social.model.dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletContext;
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
            try {
//                if (!session.getAttribute("busca").equals(busca)) {
//                    session.setAttribute("busca", busca);
//                    session.setAttribute("pagina", 1);
//                } else {
//
//                    session.setAttribute("pagina", request.getParameter("pag"));
//                }
            } catch (Exception e) {
            }










            DAO<Produtos> dao = new DAO<Produtos>(Produtos.class);
            List<Produtos> lista = dao.listaTodos();
            int pag = Integer.parseInt(request.getParameter("pag"));
            List<Produtos> listaProdutos = dao.listaTodosPaginada((pag - 1) * 10, pag * 10);
            int size = lista.size();
//            System.out.println(size + "--------------");
            System.out.println((pag - 1) * 10 + "--------------");
            System.out.println(pag * 10 + "--------------");

            int nPag = 0;
            if (size % 10 != 0) {
                nPag = 1 + size / 10;
            } else {
                nPag = size / 10;
            }




            String paginacao = "<ul>\n"
                    + "                                                <li class=\"nolink\">« Página Anterior</li>\n";
            for (int i = 1; i < nPag + 1; i++) {
//                if (pag == i) {
//                    paginacao += "                                                <li><a href=\"#\" class=\"current\">" + i + "</a></li>\n";
//
//                } else {
                    paginacao += "                                                <li><a href=\"PesquisaProdutos?pag=" + i + "&busca=" + busca + "\">" + i + "</a></li>\n";
//                }
            }
            paginacao += "                                                <li><a href=\"#\">Próxima Pagina »</a></li>\n"
                    + "                                            </ul>";



            session.setAttribute("listaProdutos", listaProdutos);
            session.setAttribute("pagination", paginacao);
//      
            if (!listaProdutos.isEmpty()) {
                response.sendRedirect(UrlAplication.getUrlAplicacao() + "busca.jsp?busca=" + busca + "&pag=" + pag);
            } else {
                response.sendRedirect(UrlAplication.getUrlAplicacao() + "busca.jsp?isnull=true");
            }
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
