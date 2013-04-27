/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.Categoria;
import br.com.starsoft.social.model.beans.Vendedor;
import br.com.starsoft.social.model.beans.Endereco;
import br.com.starsoft.social.model.beans.Location;
import br.com.starsoft.social.model.beans.PessoaFisica;
import br.com.starsoft.social.model.beans.Produtos;
import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.dao.DAO;
import br.com.starsoft.social.model.dao.DAOVendedor;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author wagner
 */
public class TestePersisteLocation {

    public static void main(String[] args) {

        DAO<Usuario> daoUse = new DAO<Usuario>(Usuario.class);
        DAOVendedor daoEmp = new DAOVendedor(Vendedor.class);
        DAO<Location> daoLoc = new DAO<Location>(Location.class);
        DAO<Produtos> daoPro = new DAO<Produtos>(Produtos.class);
        DAO<Endereco> daoEnd = new DAO<Endereco>(Endereco.class);
        DAO dao = new DAO(Object.class);

//        //cria location
//        Location location = new Location("10000","10000");
//        
//        //coloca o Location para o JPA Entitymanager gerenciar
//        dao.adiciona(location);
//        
//        //cria endereço fake
//        Endereco endereco = new Endereco();
//        endereco.setCidade("Barbosa Ferraz");
//        endereco.setLocation(location);
//        
//        //coloca o Endereço para o JPA Entitymanager gerenciar
//        dao.adiciona(endereco);
//        
//        
//        //cria a Vendedor
////        Vendedor empresa = new Vendedor();
////        empresa.setCnpj("0000000000000000");
////        empresa.setEndereco(endereco);
////        empresa.setSenha("Vendedor do zé");
////        
////         //coloca a Vendedor para o JPA Entitymanager gerenciar
////         // e termina a operação no banco comitando a transação
////        daoEmp.adiciona(empresa);
//        
//        
////       Cria usuario

        PessoaFisica vendedor = new PessoaFisica();
        vendedor.setCpf("1646541654");
        vendedor.setId(1);
        vendedor.setMail("adfdafdafdafdafda@efdafdd.dafdaf");
        vendedor.setNomeFantasia("henrique");
        //        user.setEndereco(endereco);
        //        List<Produtos> produtos = new ArrayList<Produtos>();
        //        Produtos produtos1 = new Produtos(null, 1, "dafda", Categoria.Bebida, 1.0, null, null);
        //        Produtos produtos2 = new Produtos(null, 2, "dafda", Categoria.Bebida, 1.0, null, null);
        //        Produtos produtos3 = new Produtos(null, 3, "dafda", Categoria.Bebida, 1.0, null, null);
        //        daoPro.adiciona(produtos1);
        //        daoPro.adiciona(produtos2);
        //        daoPro.adiciona(produtos3);
        //
        //        produtos.add(produtos3);
        //        produtos.add(produtos2);
        //        produtos.add(produtos1);
        //        vendedor.setListaProdutos(produtos);
        ////
        //        daoEmp.adiciona(vendedor);
        Vendedor buscaPorId = daoEmp.buscaPorId(1);
        System.out.println(buscaPorId.toString());


    }
}
