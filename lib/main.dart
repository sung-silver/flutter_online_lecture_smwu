
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.all(50),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue
        ),
      ),
    )
  ));
}