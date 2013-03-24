/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.controler.facebook;

import br.com.starsoft.social.model.logic.UrlAplication;
import br.com.starsoft.social.model.utils.SocialConnectionFactory;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;

/**
 *
 * @author wagner
 */
@WebServlet(name = "AutenticarFacebook", urlPatterns = {"/AutenticarFacebook"})
public class AutenticarFacebook extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {



            /*
             * 
             * 
             * Processo de autenticação com metodo OAuth2 
             * Obtem conecção com Facebook  <code>Classe SocialConnectionFactory<code> 
             * 
             * 
             */

            OAuth2Operations oauthOperations = SocialConnectionFactory.facebookConnFactory().getOAuthOperations();


            /*
             * 
             * 
             * Instancia os parametros para a aplicacao no facebook permissões
             *
             *
             */


            OAuth2Parameters params = new OAuth2Parameters();
            params.setScope("user_about_me,user_birthday,user_likes,user_status,email,publish_actions");


            /*
             * 
             * 
             * indica url de callback
             *
             * 
             */
            params.setRedirectUri("" + UrlAplication.getUrlAplicacao() + "ProcessFacebook");
            params.add("display", "popup");
            String authorizeUrl = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, params);

            /*
             * 
             *redireciona para url de callback
             *onde vai ser obtido o token de acesso
             * 
             * 
             */
            response.sendRedirect(authorizeUrl);






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
