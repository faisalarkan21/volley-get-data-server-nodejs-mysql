package com.example.faisalarkan.get_data_from_server;

/**
 * Created by faisal arkan on 28/05/2017.
 */

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

public class CustomList extends ArrayAdapter<String> {
    private String[] idBerita;
    private String[] judulBerita;
    private String[] isiBerita;
    private Activity context;

    public CustomList(Activity context, String[] idBerita, String[] judulBerita, String[] isiBerita) {
        super(context, R.layout.list_view_layout, idBerita);
        this.context = context;
        this.idBerita = idBerita;
        this.judulBerita = judulBerita;
        this.isiBerita = isiBerita;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater inflater = context.getLayoutInflater();
        View listViewItem = inflater.inflate(R.layout.list_view_layout, null, true);

        TextView textViewName = (TextView) listViewItem.findViewById(R.id.textViewName);
        TextView textViewEmail = (TextView) listViewItem.findViewById(R.id.textViewEmail);


        textViewName.setText(judulBerita[position]);
        textViewEmail.setText(isiBerita[position]);

        return listViewItem;
    }
}