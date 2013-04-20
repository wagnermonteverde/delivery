/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.utils;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;

/**
 *
 * @author wagner
 */
public class RedimensionaImagen {

    public void RedimensionaImagen(String pathJpg) throws IOException {

        BufferedImage imagem = null;

        try {
            imagem = ImageIO.read(new File(pathJpg));
        } catch (IOException ex) {
            System.out.println(ex);
        }
        int new_w = 200, new_h = 200;
       
        BufferedImage new_img = new BufferedImage(new_w, new_h, BufferedImage.TYPE_INT_RGB);
    
        Graphics2D g = new_img.createGraphics();

        g.drawImage(imagem, 0, 0, new_w, new_h, null);
        
        ImageIO.write(new_img, "JPG", new File("nweImg.jpg"));


    }
}
