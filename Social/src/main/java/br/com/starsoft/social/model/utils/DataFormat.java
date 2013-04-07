/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.starsoft.social.model.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author wagner
 */
public class DataFormat {

    public static Calendar converte(String data) {

        try {


            SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
            Calendar cal = Calendar.getInstance();
            cal.setTime(sdf.parse(data));

//            System.out.println(cal.getTime().toGMTString());

        return cal;

        } catch (ParseException e) {
            e.printStackTrace();
        }

        return null;

    }
}
