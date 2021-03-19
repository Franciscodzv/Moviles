package com.example.notifications;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class ChildActivity extends AppCompatActivity {

    Button btnManager;
    TextView txtViewMgr;
    //ImageView imgViewMgr;
    Intent myIntent;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_child);

        btnManager = findViewById(R.id.button);
        txtViewMgr = findViewById(R.id.textView2);
        //imgViewMgr = findViewById(R.id.imageview);

        btnManager.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v){
                txtViewMgr.setText("You like clicking stuff don't you?");
                btnManager.setText("Don't you?!");
            }
        });

    }
}