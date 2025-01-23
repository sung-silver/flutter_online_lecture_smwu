import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class ProviderSecondScreen extends StatelessWidget {
  const ProviderSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// provider를 쓸 경우에만 다음과 같이 쓸 수 있음
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("ProviderSecond"),
        ),
        body: Column(
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
          ],
        ));
  }
}
