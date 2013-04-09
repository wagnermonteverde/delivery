/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.testes;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author wagner
 */
public class Testedatas {

    public static void main(String[] args) {


        try {
            String data = "07/14/1983";
            SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
            Calendar cal = Calendar.getInstance();
            cal.setTime(sdf.parse(data));
            
            System.out.println(cal.getTime().toGMTString());
            
            
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}
