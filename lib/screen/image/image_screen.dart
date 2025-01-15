
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Column(
        children: [
          Image.asset("assets/lecture_flutter_image.png"),
        ],
      ),
    );
  }
}
