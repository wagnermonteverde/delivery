/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import br.com.starsoft.social.model.beans.Empresa;
import br.com.starsoft.social.model.beans.Endereco;
import br.com.starsoft.social.model.beans.Location;
import br.com.starsoft.social.model.beans.Usuario;
import br.com.starsoft.social.model.dao.DAO;

/**
 *
 * @author wagner
 */
public class TestePersisteLocation {
    
    public static void main(String[] args) {
        
        DAO<Usuario> daoUse = new DAO<Usuario>(Usuario.class);
        DAO<Empresa> daoEmp = new DAO<Empresa>(Empresa.class);
        DAO<Location> daoLoc = new DAO<Location>(Location.class);
        DAO<Endereco> daoEnd = new DAO<Endereco>(Endereco.class);
        DAO dao = new DAO(Object.class);
        
        //cria location
        Location location = new Location("10000","10000");
        
        //coloca o Location para o JPA Entitymanager gerenciar
        dao.adiciona(location);
        
        //cria endereço fake
        Endereco endereco = new Endereco();
        endereco.setCidade("Barbosa Ferraz");
        endereco.setLocation(location);
        
        //coloca o Endereço para o JPA Entitymanager gerenciar
        dao.adiciona(endereco);
        
        
        //cria a Empresa
//        Empresa empresa = new Empresa();
//        empresa.setCnpj("0000000000000000");
//        empresa.setEndereco(endereco);
//        empresa.setSenha("Empresa do zé");
//        
//         //coloca a Empresa para o JPA Entitymanager gerenciar
//         // e termina a operação no banco comitando a transação
//        daoEmp.adiciona(empresa);
        
        
//       Cria usuario
        
        Usuario user = new Usuario();
        user.setCpf("1646541654");
        user.setMail("adfdafdafdafdafda@efdafdd.dafdaf");
        user.setName("henrique");
        user.setEndereco(endereco);
        
        dao.adiciona(user);
                
        
    }
    
}
