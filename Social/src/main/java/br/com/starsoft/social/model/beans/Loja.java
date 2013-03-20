/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.beans;

import java.util.List;

/**
 *
 * @author wagner
 */
public class Loja {
    
    private Integer id;
    private Empresa empresa;
    private List<Produtos> listaProdutos;
    private Boolean situacao;

    public Loja() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Empresa getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }

    public List<Produtos> getListaProdutos() {
        return listaProdutos;
    }

    public void setListaProdutos(List<Produtos> listaProdutos) {
        this.listaProdutos = listaProdutos;
    }

    public Boolean getSituacao() {
        return situacao;
    }

    public void setSituacao(Boolean situacao) {
        this.situacao = situacao;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Loja other = (Loja) obj;
        if (this.id != other.id && (this.id == null || !this.id.equals(other.id))) {
            return false;
        }
        if (this.empresa != other.empresa && (this.empresa == null || !this.empresa.equals(other.empresa))) {
            return false;
        }
        if (this.listaProdutos != other.listaProdutos && (this.listaProdutos == null || !this.listaProdutos.equals(other.listaProdutos))) {
            return false;
        }
        if (this.situacao != other.situacao && (this.situacao == null || !this.situacao.equals(other.situacao))) {
            return false;
        }
        return true;
    }
    
    
    
    
    
}
