/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.Endereco;
import br.com.starsoft.social.model.beans.Location;
import br.com.starsoft.social.model.beans.PessoaFisica;
import br.com.starsoft.social.model.beans.PessoaJuridica;
import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOVendedor;
import br.com.starsoft.social.model.logic.ControlerCadastroVendedor;

/**
 *
 * @author wagner
 */
public class testeVendedorPersiste {

    public static void main(String[] args) {

        DAOVendedor daovendedor = new DAOVendedor(Vendedor.class);
        DAO<Location> daoLocation = new DAO<Location>(Location.class);
        DAO<Endereco> daoEndereco = new DAO<Endereco>(Endereco.class);

        Location location = new Location("0000000000", "00000000000");
        daoLocation.adiciona(location);

        Endereco endereco = new Endereco();
        endereco.setLocation(location);
        endereco.setCidade("barbosa ferraz");
        daoEndereco.adiciona(endereco);

        Vendedor vendedor = new PessoaFisica("04271689963", "wagner aparecido monteverde");
        Vendedor vendedor1 = new PessoaJuridica("30816391000188", "lanche e cia ltda");

        vendedor.setEndereco(endereco);
        vendedor1.setEndereco(endereco);
        vendedor.setMail("wagnermonteverde@hotmail.com");

        daovendedor.adiciona(vendedor);
        daovendedor.adiciona(vendedor1);
        
//        ControlerCadastroVendedor controlerCadastroVendedor = new ControlerCadastroVendedor();
//        System.out.println(controlerCadastroVendedor.verificaEmailCadastrado("wagnermonteverde@hotmail.com"));
//        System.out.println(controlerCadastroVendedor.verificaCnpjCadastrado("000000000000"));
//        System.out.println(controlerCadastroVendedor.verificaCpfCadastrado("000000000000"));
         
//        String cpf = "042.716.899-63";
//        String cnpj = "30.816.391/0001-88";
//        
//        System.out.println(cpf.replaceAll("[^0-9]", ""));
//        System.out.println(cnpj.replaceAll("[^0-9]", ""));
        
    }
    
}
