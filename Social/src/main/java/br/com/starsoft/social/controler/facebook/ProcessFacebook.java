/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.controler.facebook;

import br.com.starsoft.social.model.logic.UrlAplication;
import br.com.starsoft.social.model.utils.ByteToBase64;
import br.com.starsoft.social.model.utils.SocialConnectionFactory;
import java.io.IOException;
import java.io.PrintWriter;
import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookProfile;
import org.springframework.social.facebook.api.impl.FacebookTemplate;
import org.springframework.social.oauth2.AccessGrant;

/**
 *
 * @author wagner
 */
@WebServlet(name = "ProcessFacebook", urlPatterns = {"/ProcessFacebook"})
public class ProcessFacebook extends HttpServlet {

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
             * Pega o Codigo de Autorização vindo da
             * autenticação com o facebook
             * 
             */
            String code = request.getParameter("code");






            /*
             *
             * Instancia um acesso que retorna um token
             *
             */

            AccessGrant accessGrant = SocialConnectionFactory.facebookConnFactory().getOAuthOperations().exchangeForAccess(code, "" + UrlAplication.getUrlAplicacao() + "ProcessFacebook", null);
            String accessToken = accessGrant.getAccessToken();



            /*
             * 
             *
             * Instancia um template que provem toods os metodos de acesso
             * ao Facebook com necessidde do token de acesso
             * e seta na sessão
             * 
             */



            Facebook facebook = new FacebookTemplate(accessToken);



            session.setAttribute("facebook", facebook);
            session.setAttribute("token", accessToken);




            response.sendRedirect("ControlerLogin");




//
//            facebook.feedOperations().updateStatus("Teste Postagem Com Aplicação Java Web ! Uhuuuuuuuuuuuuuuuuuuuuul \n Spring Social \n"
//                    + "Metodo de Autenticação OAuth2");


        } catch (Exception ex) {

            System.out.println(ex.toString());
            response.sendRedirect("error.jsp");

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
