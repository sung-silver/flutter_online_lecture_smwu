import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatelessWidget {
  const ListviewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> al = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l'];

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder'),
      ),
      body: ListView.builder(
        itemCount: al.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(50),
            child: Text(
              al[index],
              style: const TextStyle(fontSize: 20),
            ),
          );
      }),
    );
  }
}