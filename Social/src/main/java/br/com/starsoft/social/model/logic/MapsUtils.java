package br.com.starsoft.social.model.logic;

import br.com.starsoft.social.model.beans.Location;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

public class MapsUtils {

//    public static void main(String[] args) throws JSONException {
////        for (int i = 0; i < 100; i++) {
////            System.out.println(getDistance("campina da lagoa",  "herveira"));
////            System.out.println(getTemp("campina da lagoa", "curitiba"));
//            System.out.println(getCoord("utfpr campo mourao"));
////            System.err.println("tem uma parametro que passa pela url que faz ele retornar em portugues");
////        }
//
//    }
    public static String getTemp(String origem, String destino) throws JSONException {
        String json = getJson("http://maps.googleapis.com/maps/api/distancematrix/json?origins="
                + origem.replace(" ", "+")
                + ",brasil&destinations="
                + destino.replace(" ", "+")
                + ",brasil&sensor=false");

        JSONObject my_obj = new JSONObject(json);

        String get = my_obj.get("rows").toString();
        String[] split = get.split("\"");

        return split[7];


    }

    public static Location getCoord(String cidade) throws JSONException {

        //tem que passar uma segunda cidade no destination, aqui está setando uma qualquer
        String json = getJson("http://maps.googleapis.com/maps/api/directions/json?"
                + "origin=" + cidade.replace(" ", "+")
                + "&destination=cascavel"
                + "&sensor=false");

        JSONObject my_obj = new JSONObject(json);

        String toString = my_obj.get("routes").toString();
        String[] split = toString.split("\"");

        String lon = split[16].replace(":", "").replace(",", "");
        String lat = split[18].replace(":", "").replace(",", "").replace("}", "");

        return new Location(lat, lon);
    }

    public static Double getDistance(String origem, String destino) throws JSONException {
        String json = getJson("http://maps.googleapis.com/maps/api/distancematrix/json?origins="
                + origem.replace(" ", "+")
                + ",brasil&destinations="
                + destino.replace(" ", "+")
                + ",brasil&sensor=false");
        
        JSONObject my_obj = new JSONObject(json);

        String get = my_obj.get("rows").toString();
        String[] split = get.split("\"");

        return Double.parseDouble(split[15].replace(",", "").split(" ")[0]);
    }

    public static String getJson(String url) {
        String returno = "";
        try {
            URL url1 = new URL(url);
            BufferedReader br = new BufferedReader(new InputStreamReader(url1.openStream()));
            String s;
            while ((s = br.readLine()) != null) {
                returno += s + "\n";
            }
            br.close();
        } catch (Exception excecao) {
            excecao.printStackTrace();
        }
        return returno;
    }
}
