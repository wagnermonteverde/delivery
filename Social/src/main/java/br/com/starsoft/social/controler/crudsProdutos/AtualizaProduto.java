/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.controler.crudsProdutos;

import br.com.starsoft.social.model.beans.Categoria;
import br.com.starsoft.social.model.logic.ControlerCRUDProdutos;
import br.com.starsoft.social.model.logic.UrlAplication;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author henrique
 */
@WebServlet(name = "AtualizaProduto", urlPatterns = {"/AtualizaProduto"})
public class AtualizaProduto extends HttpServlet {

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
            String preco = (String) request.getParameter("valor");
            String categoria = (String) request.getParameter("categoria");
            Categoria categoria1 = null;
            if (categoria.equalsIgnoreCase("bebida")) {
                categoria1 = categoria1.Bebida;
            } else {
                categoria1 = categoria1.Comida;
            }
            int id = Integer.parseInt(request.getParameter("id"));
            ControlerCRUDProdutos.atualizaProdutos(id, (String) request.getParameter("titulo"), preco.replace(",", "."), (String) request.getParameter("detalhes"), categoria1);

            response.sendRedirect(UrlAplication.getUrlAplicacao() + "ListaProdutosVendedor");
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
