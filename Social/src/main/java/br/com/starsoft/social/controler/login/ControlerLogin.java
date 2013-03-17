/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.controler.login;

import br.com.starsoft.social.model.logic.ControlerCadastro;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookProfile;

/**
 *
 * @author wagner
 */
@WebServlet(name = "ControlerLogin", urlPatterns = {"/ControlerLogin"})
public class ControlerLogin extends HttpServlet {

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


            /*
             *
             * 
             * Recupera o Facebook template da sessão
             * 
             * 
             */
            Facebook facebook = (Facebook) session.getAttribute("facebook");


            /*
             *
             * 
             * Obtem o Perfil do Usario com todas as informações
             * referentes ao perfil do usuario
             * 
             * 
             */
            FacebookProfile profile = facebook.userOperations().getUserProfile();



            /*
             *
             * Instancia um controler para tratar operações de cadastro
             * e verificação de usuarios cadastrados
             * 
             * 
             */
            ControlerCadastro controlercadastro = new ControlerCadastro();




            /*
             * 
             * Verifica se o usuario q fez login com facebook
             * já esta cadastrado no sistema
             * se não estiver faz o cadastro basico
             * com os dados da rede social
             * 
             */

            if (controlercadastro.verificaCadastrado(profile.getEmail())) {

                session.setAttribute("usuario", controlercadastro.RetornaUsuarioCadastrado(profile,facebook,(String)session.getAttribute("token")));

            } else {

                session.setAttribute("usuario", controlercadastro.cadastrobasico(profile,facebook,(String)session.getAttribute("token")));

            }


            /**
             *
             * Redireciona para o inicio
             *
             *
             */
            response.sendRedirect("index.jsp");






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
