/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.controler.pedidos;

import br.com.starsoft.social.model.beans.EstadoPedido;
import br.com.starsoft.social.model.beans.ItemPedido;
import br.com.starsoft.social.model.beans.Pedido;
import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOProduto;
import br.com.starsoft.social.model.dao.DAOUsuario;
import br.com.starsoft.social.model.dao.DAOVendedor;
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
 * @author wagner
 */
@WebServlet(name = "ControlerPedido", urlPatterns = {"/ControlerPedido"})
public class ControlerPedido extends HttpServlet {

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
            DAOProduto daoProduto = new DAOProduto(Produtos.class);
            DAOUsuario daoUsuario = new DAOUsuario(Usuario.class);
            DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);
            DAO<Pedido> daoPedido = new DAO<Pedido>(Pedido.class);





            String idUser = request.getParameter("idusuario");
            String idProduto = request.getParameter("idproduto");
            String idVendedor = request.getParameter("idvendedor");

            Produtos produto = daoProduto.buscaPorId(Integer.parseInt(idProduto));


            ItemPedido iten = new ItemPedido(produto, 1);

            Pedido pedido = null;



            if (session.getAttribute("pedido") == null) {


                Usuario user = (Usuario) session.getAttribute("usuario");
                Vendedor vendedor = daoVendedor.buscaPorId(Integer.parseInt(idVendedor));

                pedido = new Pedido(user, vendedor, EstadoPedido.EmPreparo);
                pedido.adicionaIten(iten);
                session.setAttribute("pedido", pedido);

                out.print("R$ 10.00");


            } else {

                pedido = (Pedido) session.getAttribute("pedido");
                pedido.adicionaIten(iten);

//                out.print("R$ "+pedido.retornaTotal());
                out.print("R$ 20.00");

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
