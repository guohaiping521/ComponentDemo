package com.example.componentdemo;
/*
 * Created by ghp on 2018/4/3.
 */

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;

public class BaseActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.live_base_activity);
        Log.i("ghpppp","12222");
    }
}
