package br.com.starsoft.social.model.utils;

import sun.misc.BASE64Encoder;

/**
 *
 * @author wagner
 */
public class ByteToBase64 {

    private byte[] foto;

    public ByteToBase64(byte[] foto) {
        this.foto = foto;
    }

    public ByteToBase64() {
    }

    public String retornaBase64() {

        if (this.foto != null) {
            BASE64Encoder encoder = new BASE64Encoder();
            return "data:image/jpeg;base64," + encoder.encode(foto);
        }
        System.out.println("nda");
        return "nda";
    }
}
