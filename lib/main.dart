
import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/button_screen.dart';

import 'custom_scroll_behavior.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonScreen(),
      scrollBehavior: CustomScrollBehavior(),
    );
  }
}
