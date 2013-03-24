/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.beans;

import br.com.starsoft.social.model.utils.ByteToBase64;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import org.hibernate.annotations.Index;
import org.hibernate.annotations.Type;

/**
 *
 * @author wagner
 *
 */
@Entity
@Table(name = "Usuario")
@org.hibernate.annotations.Table(
   appliesTo = "Usuario",
indexes = {
    @Index(name = "email", columnNames = "mail") //@Index(name="multi_column_index", columnNames = {"col1", "col2"}),
})
public class Usuario implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;
    private String name;
    @Type(type="org.hibernate.type.PrimitiveByteArrayBlobType")
    private byte[] fotoPerfil;
    private String lastName;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Calendar dataNascimeto;
    @Column(name = "mail")
    private String mail;
    private String oauthVerifierTwitter;
    private String tokenAcesso;
    private String cpf;
    @OneToOne
    private Endereco endereco;

    public Usuario() {
    }

    public Integer getId() {
        return id;
    }

    public byte[] getFotoPerfil() {
        return fotoPerfil;
    }

    public void setFotoPerfil(byte[] fotoPerfil) {
        this.fotoPerfil = fotoPerfil;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Calendar getDataNascimeto() {
        return dataNascimeto;
    }

    public void setDataNascimeto(Calendar dataNascimeto) {
        this.dataNascimeto = dataNascimeto;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getOauthVerifierTwitter() {
        return oauthVerifierTwitter;
    }

    public void setOauthVerifierTwitter(String oauthVerifierTwitter) {
        this.oauthVerifierTwitter = oauthVerifierTwitter;
    }

    public String getTokenAcesso() {
        return tokenAcesso;
    }

    public void setTokenAcesso(String tokenAcesso) {
        this.tokenAcesso = tokenAcesso;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
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
        final Usuario other = (Usuario) obj;
        if ((this.name == null) ? (other.name != null) : !this.name.equals(other.name)) {
            return false;
        }
        if (!Arrays.equals(this.fotoPerfil, other.fotoPerfil)) {
            return false;
        }
        if ((this.lastName == null) ? (other.lastName != null) : !this.lastName.equals(other.lastName)) {
            return false;
        }
        if ((this.tokenAcesso == null) ? (other.tokenAcesso != null) : !this.tokenAcesso.equals(other.tokenAcesso)) {
            return false;
        }
       
        return true;
    }

    
    
    
    
    

    public String retornaStringFoto(byte[] foto) {
        ByteToBase64 trans = new ByteToBase64(foto);

        return trans.retornaBase64();

    }

    @Override
    public String toString() {
        return "Usuario{" + "id=" + id + ", name=" + name + ", fotoPerfil=" + fotoPerfil + ", lastName=" + lastName + ", dataNascimeto=" + dataNascimeto + ", mail=" + mail + ", oauthVerifierTwitter=" + oauthVerifierTwitter + ", tokenAcesso=" + tokenAcesso + ", cpf=" + cpf + ", endereco=" + endereco + '}';
    }

  
}
