import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'my_controller.dart';

class GetXSecondScreen extends StatelessWidget {
  const GetXSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GetXSecond"),
        ),
        body: Column(
          children: [
            Obx(() {
              return Center(
                child: Text(
                  MyController.to.count.value.toString(),
                  style: TextStyle(fontSize: 25),
                ),
              );
            }),
            ElevatedButton(
              onPressed: () {
                MyController.to.countUp();
              },
              child: Text("Count Up"),
            ),
          ],
        ));
  }
}
