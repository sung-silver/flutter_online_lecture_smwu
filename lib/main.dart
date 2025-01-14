
import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/button_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ButtonScreen(),
    );
  }
}
