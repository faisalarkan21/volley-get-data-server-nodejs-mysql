package com.example.faisalarkan.get_data_from_server;

/**
 * Created by faisal arkan on 28/05/2017.
 */

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


public class ParseJSON {
    public static String[] beritaId;
    public static String[] judulBerita;
    public static String[] isiBerita;

    public static final String JSON_ARRAY = "result";
    public static final String KEY_ID = "id_berita";
    public static final String KEY_NAME = "judul_berita";
    public static final String KEY_EMAIL = "ringakasan_berita";

    private JSONArray berita = null;

    private String json;

    public ParseJSON(String json){
        this.json = json;
    }

    protected void parseJSON(){
        JSONObject jsonObject=null;
        try {
            jsonObject = new JSONObject(json);
            berita = jsonObject.getJSONArray(JSON_ARRAY);

            beritaId = new String[berita.length()];
            judulBerita = new String[berita.length()];
            isiBerita = new String[berita.length()];

            for(int i=0;i<berita.length();i++){
                JSONObject jo = berita.getJSONObject(i);
                beritaId[i] = jo.getString(KEY_ID);
                judulBerita[i] = jo.getString(KEY_NAME);
                isiBerita[i] = jo.getString(KEY_EMAIL);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}