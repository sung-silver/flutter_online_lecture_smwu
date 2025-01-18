import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        scrollDirection: Axis.horizontal,
        children: const [
          Text('가', style: TextStyle(fontSize: 20)),
          Text('나', style: TextStyle(fontSize: 20)),
          Text('다', style: TextStyle(fontSize: 20)),
          Text('라', style: TextStyle(fontSize: 20)),
          Text('마', style: TextStyle(fontSize: 20)),
          Text('바', style: TextStyle(fontSize: 20)),
          Text('사', style: TextStyle(fontSize: 20)),
          Text('아', style: TextStyle(fontSize: 20)),
          Text('자', style: TextStyle(fontSize: 20)),
          Text('차', style: TextStyle(fontSize: 20)),
          Text('카', style: TextStyle(fontSize: 20)),
          Text('타', style: TextStyle(fontSize: 20)),
          Text('파', style: TextStyle(fontSize: 20)),
          Text('하', style: TextStyle(fontSize: 20)),
          Text('가', style: TextStyle(fontSize: 20)),
          Text('나', style: TextStyle(fontSize: 20)),
          Text('다', style: TextStyle(fontSize: 20)),
          Text('라', style: TextStyle(fontSize: 20)),
          Text('마', style: TextStyle(fontSize: 20)),
          Text('바', style: TextStyle(fontSize: 20)),
          Text('사', style: TextStyle(fontSize: 20)),
          Text('아', style: TextStyle(fontSize: 20)),
          Text('자', style: TextStyle(fontSize: 20)),
          Text('차', style: TextStyle(fontSize: 20)),
          Text('카', style: TextStyle(fontSize: 20)),
          Text('타', style: TextStyle(fontSize: 20)),
          Text('파', style: TextStyle(fontSize: 20)),
          Text('하', style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
