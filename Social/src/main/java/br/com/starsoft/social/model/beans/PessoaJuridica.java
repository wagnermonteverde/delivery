/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.beans;

import java.io.Serializable;
import java.util.Calendar;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 *
 * @author wagner
 * 
 */
@Entity
@Table(name = "Vendedor")
public class PessoaJuridica extends Vendedor implements Serializable {

    private String cnpj;
    private String razaSocial;

    public PessoaJuridica() {
    }

    public PessoaJuridica(String cnpj, String razaSocial) {
        this.cnpj = cnpj;
        this.razaSocial = razaSocial;
    }

    
    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getRazaSocial() {
        return razaSocial;
    }

    public void setRazaSocial(String razaSocial) {
        this.razaSocial = razaSocial;
    }

    @Override
    public String toString() {
        return "PessoaJuridica{" + "cnpj=" + cnpj + ", razaSocial=" + razaSocial + '}';
    }
    
    
}
