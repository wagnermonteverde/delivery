/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Endereco;
import br.com.starsoft.social.model.beans.Location;
import br.com.starsoft.social.model.beans.PessoaFisica;
import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOVendedor;
import br.com.starsoft.social.model.utils.TrataCaracteres;
import java.util.Calendar;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONException;

/**
 *
 * @author wagner
 */
public class ControlerCadastroVendedor {

    public String verificaEmailCadastrado(String email) {

        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);
        return daoVendedor.consultaEmail(email) == null ? "true" : "false";

    }

    public String verificaCpfCadastrado(String cpf) {

        cpf = TrataCaracteres.retiraCaracteresNaoNumericos(cpf);
        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);

        return daoVendedor.consultaCpf(cpf) == null ? "true" : "false";


    }

    public String verificaCnpjCadastrado(String cnpj) {

        cnpj = TrataCaracteres.retiraCaracteresNaoNumericos(cnpj);
        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);

        return daoVendedor.consultaCnpj(cnpj) == null ? "true" : "false";

    }

    public Vendedor cadastraPessoaFisica(HttpServletRequest request) throws JSONException {
        
        DAO<Location> daolocation = new DAO<Location>(Location.class);
        DAO<Vendedor> daoVendedor = new DAO<Vendedor>(Vendedor.class);
        DAO<Endereco> daoEndereco = new DAO<Endereco>(Endereco.class);
        
        
       String tipo = request.getParameter("tipo");
       String fantasia = request.getParameter("fantasia");
       String nome= request.getParameter("nome");
       String cpf= request.getParameter("pessoa.cpf");
       String mail= request.getParameter("mail2");
       String estado= request.getParameter("estados");
       String cidade = request.getParameter("cidade");
       String rua= request.getParameter("rua");
       String numero= request.getParameter("n");
       String cep= request.getParameter("cep");
       String password= request.getParameter("password");
       
       
       Location location = MapsUtils.getCoord(numero+","+rua+" ,"+cidade+", "+estado);
       daolocation.adiciona(location);
       
       Endereco endereco = new Endereco();
       endereco.setNumero(Integer.parseInt(numero));
       endereco.setCidade(cidade);
       endereco.setUf(estado);
       endereco.setLocation(location);
       daoEndereco.adiciona(endereco);
       
       
       PessoaFisica pessoaFisica = new  PessoaFisica(cpf, nome);
       pessoaFisica.setNomeFantasia(fantasia);
       pessoaFisica.setMail(mail);
       pessoaFisica.setTipo(tipo);
       pessoaFisica.setSenha(password);
       pessoaFisica.setDataCadastro(Calendar.getInstance());
       pessoaFisica.setEndereco(endereco);
       
       daoVendedor.adiciona(pessoaFisica);
     
       return pessoaFisica;
        
    }
}
