/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.controler.crudsProdutos;

import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.conf.UrlAplication;
import br.com.starsoft.social.model.logic.ControlerCRUDProdutos;
import br.com.starsoft.social.model.logic.ControlerLinkPage;
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
@WebServlet(name = "RemoveProdudos", urlPatterns = {"/RemoveProdudos"})
public class RemoveProdudos extends HttpServlet {

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

            HttpSession session = request.getSession();

            ServletContext contexto = this.getServletContext();


            Vendedor vendedor = (Vendedor) session.getAttribute("vendedor");


            DAO<Vendedor> daoVendedor = new DAO<Vendedor>(Vendedor.class);
            DAO<Produtos> daoProdutos = new DAO<Produtos>(Produtos.class);

            String parameter = request.getParameter("id");
            Integer idproduto = Integer.parseInt(parameter);

            List<Produtos> listaProd = daoVendedor.buscaPorId(vendedor.getId()).getListaProdutos();


            Produtos p = null;

            for (Produtos pro : listaProd) {

                if (pro.getId() == idproduto) {

                    p = pro;

                }

            }
            

            listaProd.remove(p);


            vendedor.setListaProdutos(listaProd);


            daoVendedor.atualiza(vendedor);

            daoProdutos.remove(p);
            
            session.setAttribute("vendedor", daoVendedor.buscaPorId(vendedor.getId()));

            contexto.setAttribute("listaProdutos", listaProd);

            ControlerCRUDProdutos.deletaImagemProduto(getServletContext().getRealPath("/") + p.getImagem());


            response.sendRedirect("ListaProdutosVendedor");

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
