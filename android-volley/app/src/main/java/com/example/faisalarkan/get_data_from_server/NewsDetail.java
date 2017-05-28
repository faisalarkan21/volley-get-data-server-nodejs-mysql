package com.example.faisalarkan.get_data_from_server;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NewsDetail extends AppCompatActivity {

    public static String JSON_URL ;
    public static WebView isiBerita;
    private TextView judulBerita;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.news_layout);

        String idBerita = this.getIntent().getExtras().getString("idBerita");

        isiBerita = (WebView) findViewById(R.id.isiBerita);
        judulBerita = (TextView) findViewById(R.id.judulBerita);


        JSON_URL =  "http://192.168.43.172:3000/berita/" +idBerita;
//        Toast.makeText(NewsDetail.this, JSON_URL, Toast.LENGTH_LONG).show();
        sendRequest();
    }


    private void sendRequest(){

        StringRequest stringRequest = new StringRequest(JSON_URL,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        showJSON(response);

                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Toast.makeText(NewsDetail.this,"error",Toast.LENGTH_LONG).show();
                    }
                });

        RequestQueue requestQueue = Volley.newRequestQueue(this);
        requestQueue.add(stringRequest);

    }



    public void showJSON(String json){
//        Toast.makeText(NewsDetail.this, "kena", Toast.LENGTH_LONG).show();
        String judul="";
        String isi="";
//        ParseJSON jsonObject = new ParseJSON(json);
//        pj.parseJSON();

        try {
            JSONObject jsonObject = new JSONObject(json);

        JSONArray result = jsonObject.getJSONArray("result");
            String resultCoba = jsonObject.getJSONArray("result").toString();
        JSONObject Data = result.getJSONObject(0);
//            Toast.makeText(NewsDetail.this, resultCoba, Toast.LENGTH_LONG).show();
            judul = Data.getString("judul_berita");
            isi = Data.getString("isi_berita");



//        CustomList cl = new CustomList(this, ParseJSON.ids,ParseJSON.names,ParseJSON.emails);



        } catch (JSONException e) {
            e.printStackTrace();
        }
        judulBerita.setText(judul);
        isiBerita.loadData(isi, "text/html; charset=utf-8", "utf-8");
    }


//    @Override
//    public void onClick(View v) {
//        sendRequest();
//    }


}
