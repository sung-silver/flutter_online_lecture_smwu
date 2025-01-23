import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/state_management/provider/provider_second_screen.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// provider를 쓸 경우에만 다음과 같이 쓸 수 있음
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(counterModel.count.toString(),
                style: TextStyle(fontSize: 20)),
          ),
          ElevatedButton(
              onPressed: () {
                counterModel.countUp();
              },
              child: Text("Count Up")),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ProviderSecondScreen();
                },
              ));
            },
            child: const Text("화면 이동"),
          ),
        ],
      ),
    );
  }
}
