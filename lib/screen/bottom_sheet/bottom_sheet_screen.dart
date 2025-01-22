import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet"),
      ),
      body: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                  )
              ),
              context: context,
              builder: (context) {
                return Container(height: 200);
              },
            );
          },
          child: Text("바텀시트 호출")),
    );
  }
}
