import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/column_screen.dart';
import 'package:online_lecture_smwu/screen/container_practice_screen.dart';
import 'package:online_lecture_smwu/screen/container_screen.dart';
import 'package:online_lecture_smwu/screen/row_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold: 화면에 기초가 되는 위젯
    // Column: 세로로 나열하는 위젯
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  // 화면 이동 Navigator
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ContainerScreen();
                    },
                  ));
                },
                child: Text("Container")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  // 화면 이동 Navigator
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ContainerPracticeScreen();
                    },
                  ));
                },
                child: Text("Container 실습")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ColumnScreen();
                    },
                  ));
                },
                child: Text("Column")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return RowScreen();
                    },
                  ));
                },
                child: Text("Row")),
          ],
        ),
      ),
    );
  }
}
