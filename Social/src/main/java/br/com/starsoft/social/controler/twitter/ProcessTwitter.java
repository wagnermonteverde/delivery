/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.controler.twitter;

import br.com.starsoft.social.model.utils.ByteToBase64;
import java.io.IOException;
import java.io.PrintWriter;
import javax.imageio.stream.ImageInputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.social.oauth1.AuthorizedRequestToken;
import org.springframework.social.oauth1.OAuthToken;
import org.springframework.social.twitter.api.Twitter;
import org.springframework.social.twitter.api.impl.TwitterTemplate;

/**
 *
 * @author wagner
 */
@WebServlet(name = "ProcessTwitter", urlPatterns = {"/ProcessTwitter"})
public class ProcessTwitter extends HttpServlet {

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

            String oauthVerifier = request.getParameter("oauth_verifier");

            OAuthToken accessToken = AutenticarTwitter.oauthOperations.exchangeForAccessToken(
                    new AuthorizedRequestToken(AutenticarTwitter.requestToken, oauthVerifier), null);

            String consumerKey = "UMH2hkbnqLt6KK4F43nA"; // The application's consumer key
            String consumerSecret = "uYZWZPpCOpe2UqPYU87ca9owy6QuEEfp6DvwQ20vs"; // The application's consumer secr

            Twitter twitter = new TwitterTemplate(consumerKey, consumerSecret, accessToken.getValue(), accessToken.getSecret());

//            out.print(twitter.userOperations().getUserProfile().getName());

            HttpSession session = request.getSession();

            session.setAttribute("usuario", twitter.userOperations().getUserProfile().getName());

            System.out.println(twitter.userOperations().getUserProfile().getProfileImageUrl());

            session.setAttribute("foto", twitter.userOperations().getUserProfile().getProfileImageUrl());

            String imagen = twitter.userOperations().getUserProfile().getProfileImageUrl();


            response.sendRedirect("index.jsp");
//


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
