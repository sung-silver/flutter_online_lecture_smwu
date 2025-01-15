
import 'package:flutter/material.dart';

class ColumnRowAdvancedAnswer extends StatelessWidget {
  const ColumnRowAdvancedAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column, Row 심화'),
      ),
      body: Container(
        height: 500,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.green,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.orange,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
