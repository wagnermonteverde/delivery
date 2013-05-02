/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Endereco;
import br.com.starsoft.social.model.beans.Location;
import br.com.starsoft.social.model.beans.PessoaFisica;
import br.com.starsoft.social.model.beans.PessoaJuridica;
import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOVendedor;
import br.com.starsoft.social.model.utils.CriptografaSenha;
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

    public String verificaNomeFantasia(String fantasia) {

        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);

        return daoVendedor.consultaFantasia(fantasia) == null ? "true" : "false";

    }

    public void cadastraVendedor(HttpServletRequest request, String context) throws JSONException {


        if (request.getParameter("tipo").equals("pf")) {

            cadastraPessoaFisica(request, context);
        } else {

            cadastraPessoaJuridica(request, context);

        }


    }

    private void cadastraPessoaFisica(HttpServletRequest request, String context) throws JSONException {

        DAO<Location> daolocation = new DAO<Location>(Location.class);
        DAO<Vendedor> daoVendedor = new DAO<Vendedor>(Vendedor.class);
        DAO<Endereco> daoEndereco = new DAO<Endereco>(Endereco.class);


        String tipo = request.getParameter("tipo");
        String fantasia = request.getParameter("fantasia");
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("pessoa.cpf");
        String mail = request.getParameter("mail2");
        String estado = request.getParameter("estados");
        String cidade = request.getParameter("cidade");
        String rua = request.getParameter("rua");
        String numero = request.getParameter("n");
        String cep = request.getParameter("cep");
        String password = request.getParameter("password");


        Location location = MapsUtils.getCoord(numero + "," + rua + " ," + cidade + ", " + estado);
        daolocation.adiciona(location);

        Endereco endereco = new Endereco();
        endereco.setNumero(Integer.parseInt(numero));
        endereco.setCidade(cidade);
        endereco.setRua(rua);
        endereco.setUf(estado);
        endereco.setLocation(location);
        endereco.setCep(TrataCaracteres.retiraCaracteresNaoNumericos(cep));
        daoEndereco.adiciona(endereco);


        PessoaFisica pessoaFisica = new PessoaFisica(TrataCaracteres.retiraCaracteresNaoNumericos(cpf), nome);
        pessoaFisica.setNomeFantasia(fantasia);
        pessoaFisica.setMail(mail);
        pessoaFisica.setTipo(tipo);
        pessoaFisica.setSenha(CriptografaSenha.criptografa(password));
        pessoaFisica.setDataCadastro(Calendar.getInstance());
        pessoaFisica.setEndereco(endereco);


        /* cria diretorio com nome da empresa para imagens*/
        String dir = "img/empresas/" + TrataCaracteres.retiraAcentosEspacos(fantasia) + "/";
        final String path = context + dir;
        Upload upload = new Upload(path + "/");
        System.out.println("Criando diretorio -----" + path);

        pessoaFisica.setDiretorioImg(dir);

        daoVendedor.adiciona(pessoaFisica);

    }

    private void cadastraPessoaJuridica(HttpServletRequest request, String context) throws JSONException {

        DAO<Location> daolocation = new DAO<Location>(Location.class);
        DAO<Vendedor> daoVendedor = new DAO<Vendedor>(Vendedor.class);
        DAO<Endereco> daoEndereco = new DAO<Endereco>(Endereco.class);


        String tipo = request.getParameter("tipo");
        String fantasia = request.getParameter("fantasia");
        String nome = request.getParameter("razao");
        String cnpj = request.getParameter("empresa.cnpj");
        String mail = request.getParameter("mail2");
        String estado = request.getParameter("estados");
        String cidade = request.getParameter("cidade");
        String rua = request.getParameter("rua");
        String numero = request.getParameter("n");
        String cep = request.getParameter("cep");
        String password = request.getParameter("password1");




        Location location = MapsUtils.getCoord(numero + "," + rua + " ," + cidade + ", " + estado);
        daolocation.adiciona(location);

        Endereco endereco = new Endereco();
        endereco.setNumero(Integer.parseInt(numero));
        endereco.setCidade(cidade);
        endereco.setRua(rua);
        endereco.setUf(estado);
        endereco.setLocation(location);
        endereco.setCep(TrataCaracteres.retiraCaracteresNaoNumericos(cep));
        daoEndereco.adiciona(endereco);


        PessoaJuridica pessoaJuridica = new PessoaJuridica(TrataCaracteres.retiraCaracteresNaoNumericos(cnpj), nome);
        pessoaJuridica.setNomeFantasia(fantasia);
        pessoaJuridica.setMail(mail);
        pessoaJuridica.setTipo(tipo);
        pessoaJuridica.setSenha(CriptografaSenha.criptografa(password));
        pessoaJuridica.setDataCadastro(Calendar.getInstance());
        pessoaJuridica.setEndereco(endereco);



        /* cria diretorio com nome da empresa para imagens*/
        String dir = "img/empresas/" + TrataCaracteres.retiraAcentosEspacos(fantasia) + "/";
        final String path = context + dir;
        System.out.println("path ------------" + path);
        Upload upload = new Upload(path);

        pessoaJuridica.setDiretorioImg(dir);

        daoVendedor.adiciona(pessoaJuridica);




    }

    public Boolean Login(String mail, String senha) {

        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);

        String md5 = CriptografaSenha.criptografa(senha);
        Vendedor vendedor = daoVendedor.consultaEmail(mail);
        if (vendedor
                != null) {

            if (md5.equals(vendedor.getSenha()) && mail.equals(vendedor.getMail())) {

                return true;

            }

        }

        return false;

    }

    public Vendedor retornaVendedor(String mail) {

        DAOVendedor daoVendedor = new DAOVendedor(Vendedor.class);

        return daoVendedor.consultaEmail(mail);
    }

    public void updateVendedor(HttpServletRequest request, Vendedor vendedor) throws JSONException {


        if (request.getParameter("tipo").equals("pf")) {

            updatePessoaFisica(request, vendedor);

        } else {

            updatePessoaJuridica(request, vendedor);




        }



    }

    private void updatePessoaJuridica(HttpServletRequest request, Vendedor vendedor) throws JSONException {

        DAO<Location> daolocation = new DAO<Location>(Location.class);
        DAO<Vendedor> daoVendedor = new DAO<Vendedor>(Vendedor.class);
        DAO<Endereco> daoEndereco = new DAO<Endereco>(Endereco.class);
        String tipo = request.getParameter("tipo");
        String nome = request.getParameter("razao");
        String cnpj = request.getParameter("empresa.cnpj");
        String mail = request.getParameter("mail2");
        String estado = request.getParameter("estados");
        String cidade = request.getParameter("cidade");
        String rua = request.getParameter("rua");
        String numero = request.getParameter("n");
        String cep = request.getParameter("cep");
        String password = request.getParameter("password1");
        Location location = MapsUtils.getCoord(numero + "," + rua + " ," + cidade + ", " + estado);

        daolocation.adiciona(location);
        Endereco endereco = vendedor.getEndereco();

        endereco.setNumero(Integer.parseInt(numero));
        endereco.setCidade(cidade);

        endereco.setRua(rua);

        endereco.setUf(estado);

        endereco.setLocation(location);

        endereco.setCep(TrataCaracteres.retiraCaracteresNaoNumericos(cep));

        daoEndereco.atualiza(endereco);
        PessoaJuridica pessoaJuridica = (PessoaJuridica) vendedor;

        pessoaJuridica.setMail(mail);

        pessoaJuridica.setRazaSocial(nome);

        pessoaJuridica.setEndereco(endereco);

        daoVendedor.atualiza(pessoaJuridica);
    }

    private void updatePessoaFisica(HttpServletRequest request, Vendedor vendedor) throws JSONException {

        DAO<Location> daolocation = new DAO<Location>(Location.class);
        DAO<Vendedor> daoVendedor = new DAO<Vendedor>(Vendedor.class);
        DAO<Endereco> daoEndereco = new DAO<Endereco>(Endereco.class);
        String tipo = request.getParameter("tipo");
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("pessoa.cpf");
        String mail = request.getParameter("mail2");
        String estado = request.getParameter("estados");
        String cidade = request.getParameter("cidade");
        String rua = request.getParameter("rua");
        String numero = request.getParameter("n");
        String cep = request.getParameter("cep");
        Location location = MapsUtils.getCoord(numero + "," + rua + " ," + cidade + ", " + estado);
        location.setId(vendedor.getEndereco().getLocation().getId());

        daolocation.atualiza(location);
        
        Endereco endereco = vendedor.getEndereco();

        endereco.setNumero(Integer.parseInt(numero));
        endereco.setCidade(cidade);

        endereco.setRua(rua);

        endereco.setUf(estado);

        endereco.setLocation(location);

        endereco.setCep(TrataCaracteres.retiraCaracteresNaoNumericos(cep));
        daoEndereco.atualiza(endereco);

        PessoaFisica pessoaFisica = (PessoaFisica) vendedor;

        pessoaFisica.setMail(mail);

        pessoaFisica.setTipo(tipo);

        pessoaFisica.setNome(nome);

        pessoaFisica.setEndereco(endereco);

        daoVendedor.atualiza(pessoaFisica);
    }
}
