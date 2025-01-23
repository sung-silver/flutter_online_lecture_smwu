
import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/button_screen.dart';
import 'package:online_lecture_smwu/screen/state_management/provider/counter_model.dart';
import 'package:provider/provider.dart';

import 'custom_scroll_behavior.dart';

void main(){
  /// provider 사용을 위한 최초의 등록
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterModel()),
      ],
      child: MyApp())
  );
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
