import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Column(
        children: [
          Text(
            "Flutter\nText 위젯",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
                letterSpacing: 10, // 자간 설정
                height: 1 // 비율로 입력 해야 함
                ),
            textAlign: TextAlign.center, // 텍스트 영역 내 에서만 가운데 설정
          ),
          Text(
            "텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
