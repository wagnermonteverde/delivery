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
public class PessoaFisica extends Vendedor implements Serializable {

    private String cpf;
    private String nome;

    public PessoaFisica() {
        super();
    }

    public PessoaFisica(String cpf, String nome) {
        super();
        this.cpf = cpf;
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public String toString() {
        return "PessoaFisica{" + "cpf=" + cpf + ", nome=" + nome + '}';
    }
}
