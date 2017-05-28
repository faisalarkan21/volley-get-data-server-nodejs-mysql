package com.example.faisalarkan.get_data_from_server;

import android.content.Intent;
import android.provider.Settings;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;

import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    // klo pake genymotion atau virtual device
//    public static final String JSON_URL = "http://192.168.135.2:3000/";

    // klo run pake hp
    public static final String JSON_URL = "http://192.168.43.172:3000/list-berita";

    private Button buttonGet;
    private ListView listView;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        sendRequest();

        listView = (ListView) findViewById(R.id.listView);


        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapter, View view, int position, long arg) {
//                String coba = String.valueOf(adapter.);
                String idBerita = String.valueOf(adapter.getItemAtPosition(position));
//                Toast.makeText(MainActivity.this, idBerita, Toast.LENGTH_LONG).show();

                Intent halamanBerita = new Intent(MainActivity.this, NewsDetail.class);

                halamanBerita.putExtra("idBerita", idBerita);

                startActivity(halamanBerita);
            }
        });



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
                        Toast.makeText(MainActivity.this,error.getMessage(),Toast.LENGTH_LONG).show();
                    }
                });

        RequestQueue requestQueue = Volley.newRequestQueue(this);
        requestQueue.add(stringRequest);

    }

    private void showJSON(String json){

        ParseJSON pj = new ParseJSON(json);
        pj.parseJSON();
        CustomList cl = new CustomList(this, ParseJSON.beritaId,ParseJSON.judulBerita,ParseJSON.isiBerita);
        listView.setAdapter(cl);

    }

    @Override
    public void onClick(View v) {
        sendRequest();
    }



}
