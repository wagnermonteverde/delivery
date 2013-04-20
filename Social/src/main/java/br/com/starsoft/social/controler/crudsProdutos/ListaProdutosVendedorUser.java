/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.controler.crudsProdutos;

import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.logic.UrlAplication;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author henrique
 */
@WebServlet(name = "ListaProdutosVendedorUser", urlPatterns = {"/ListaProdutosVendedorUser"})
public class ListaProdutosVendedorUser extends HttpServlet {

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
            DAO<Produtos> dao = new DAO<Produtos>(Produtos.class);
            List<Produtos> listaProdutos = dao.listaTodos();

            ServletContext contexto = this.getServletContext();
            contexto.setAttribute("listaProdutos", listaProdutos);
            //
            int id = 0;
            int ancora = -1;
            try {
                id = Integer.parseInt(request.getParameter("id"));

            } catch (NumberFormatException numberFormatException) {
            }

            try {
//                Gera a ancora para rolagem do produto na pagina do vendedor apartir de um link para o produto
                Produtos buscaPorId = dao.buscaPorId(id);
                int lastIndexOf = listaProdutos.lastIndexOf(buscaPorId);
//                a ancora deve rolar a pagina para o segundo produto acima do desejado por questoes de alinhamento na tela
                Produtos get = listaProdutos.get(lastIndexOf - 2);
                ancora = get.getId();
            } catch (Exception e) {
            }


            response.sendRedirect(UrlAplication.getUrlAplicacao() + "empresa.jsp?id=" + id + "#" + ancora);
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
