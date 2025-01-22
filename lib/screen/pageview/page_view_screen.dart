import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PageView")),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              children: [
                Container(color: Colors.red,),
                Container(color: Colors.blue,),
                Container(color: Colors.green,),
              ],
            ),
          ),
        ],
      )
    );
  }
}
