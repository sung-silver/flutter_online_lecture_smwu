import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog")),
      body: ElevatedButton(
          onPressed: () {
            showDialog(
              barrierColor: Colors.purple.withOpacity(0.05),
              barrierDismissible: false, // 배경을 클릭해도 다이얼로그가 사라지지 않게하는 속성
              context: context,
              builder: (context) {
                return Dialog(
                  backgroundColor: Colors.grey.shade300,
                  shadowColor: Colors.red,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    width: 100,
                    height: 200,
                    child: Column(
                      children: [
                        Text("다이얼로그"),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "닫기",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Text("Dialog 호출")),
    );
  }
}
