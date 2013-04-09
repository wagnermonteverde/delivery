/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.beans;

import java.util.Calendar;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 *
 * @author wagner
 */
@Entity
public class Empresa {

    @Id
    @GeneratedValue
    private Integer id;
    private String cnpj;
    private String nome;
    private String mail;
    private String senha;
    private String descricao;
    private String imagemMiniatura;
    private String imagemLogo;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Calendar dataCadastro;
    
    @OneToOne
    private Endereco endereco;

    public Empresa() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getImagemMiniatura() {
        return imagemMiniatura;
    }

    public void setImagemMiniatura(String imagemMiniatura) {
        this.imagemMiniatura = imagemMiniatura;
    }

    public String getImagemLogo() {
        return imagemLogo;
    }

    public void setImagemLogo(String imagemLogo) {
        this.imagemLogo = imagemLogo;
    }

    public Calendar getDataCadastro() {
        return dataCadastro;
    }

    public void setDataCadastro(Calendar dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 23 * hash + (this.id != null ? this.id.hashCode() : 0);
        hash = 23 * hash + (this.cnpj != null ? this.cnpj.hashCode() : 0);
        hash = 23 * hash + (this.nome != null ? this.nome.hashCode() : 0);
        hash = 23 * hash + (this.mail != null ? this.mail.hashCode() : 0);
        hash = 23 * hash + (this.senha != null ? this.senha.hashCode() : 0);
        hash = 23 * hash + (this.descricao != null ? this.descricao.hashCode() : 0);
        hash = 23 * hash + (this.imagemMiniatura != null ? this.imagemMiniatura.hashCode() : 0);
        hash = 23 * hash + (this.imagemLogo != null ? this.imagemLogo.hashCode() : 0);
        hash = 23 * hash + (this.dataCadastro != null ? this.dataCadastro.hashCode() : 0);
        hash = 23 * hash + (this.endereco != null ? this.endereco.hashCode() : 0);
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
        final Empresa other = (Empresa) obj;
        if (this.id != other.id && (this.id == null || !this.id.equals(other.id))) {
            return false;
        }
        if ((this.cnpj == null) ? (other.cnpj != null) : !this.cnpj.equals(other.cnpj)) {
            return false;
        }
        if ((this.nome == null) ? (other.nome != null) : !this.nome.equals(other.nome)) {
            return false;
        }
        if ((this.mail == null) ? (other.mail != null) : !this.mail.equals(other.mail)) {
            return false;
        }
        if ((this.senha == null) ? (other.senha != null) : !this.senha.equals(other.senha)) {
            return false;
        }
        if ((this.descricao == null) ? (other.descricao != null) : !this.descricao.equals(other.descricao)) {
            return false;
        }
        if ((this.imagemMiniatura == null) ? (other.imagemMiniatura != null) : !this.imagemMiniatura.equals(other.imagemMiniatura)) {
            return false;
        }
        if ((this.imagemLogo == null) ? (other.imagemLogo != null) : !this.imagemLogo.equals(other.imagemLogo)) {
            return false;
        }
        if (this.dataCadastro != other.dataCadastro && (this.dataCadastro == null || !this.dataCadastro.equals(other.dataCadastro))) {
            return false;
        }
        if (this.endereco != other.endereco && (this.endereco == null || !this.endereco.equals(other.endereco))) {
            return false;
        }
        return true;
    }
}
