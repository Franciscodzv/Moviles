package com.example.example_2;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity2 extends AppCompatActivity {

    String string;
    TextView myTxtViewMgr;
    Intent intentReceiver;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        myTxtViewMgr = findViewById(R.id.textView2);
        intentReceiver = getIntent();
        myTxtViewMgr.setText(intentReceiver.getStringExtra("myExtra"));

    }
}