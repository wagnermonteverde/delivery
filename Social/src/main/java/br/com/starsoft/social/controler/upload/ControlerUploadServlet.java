package br.com.starsoft.social.controler.upload;

import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.logic.Upload;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author André Luis Schwerz
 * @version Wagner Aparecido Monteverde
 *
 *
 */
@WebServlet(name = "ControlerUploadServlet", urlPatterns = {"/ControlerUploadServlet"})
public class ControlerUploadServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        HttpSession session = request.getSession();

        Vendedor vendedor = (Vendedor) session.getAttribute("vendedor");



        String dir = "/" + vendedor.getDiretorioImg();
     
        


        /* 
         * 
         * 
         * Cria um objeto upload já setando e criando o diretorio que os
         * arquivos serão armazenados
         * 
         * 
         * 
         */

        Upload upload = new Upload(getServletContext().getRealPath(dir));
        System.out.println(getServletContext().getRealPath(dir));



        /* 
         * 
         * 
         * 
         * Retorna um list com todos os componentes de uma requisição
         * 
         * 
         * 
         */

        List list = upload.processRequest(request);






        /*
         *
         * 
         * Neste Map você obteve todos os campos do formulário.
         * 
         * 
         */

        Map<String, String> map = upload.getFormValues(list);
        
        
        
        




        /*
         * 
         * Vai para pagina de visualização
         * 
         */
        response.sendRedirect("admin/index.jsp");
    }
}
