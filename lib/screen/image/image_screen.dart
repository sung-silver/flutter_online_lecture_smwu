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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("container(기본)"),
            Container(
              color: Colors.grey,
              child: Image.asset(
                "assets/lecture_flutter_image.png",
                fit: BoxFit.contain,
                width: 200,
                height: 200,
              ),
            ),
            Text("fitHeight"),
            Container(
              color: Colors.grey,
              child: Image.asset(
                "assets/lecture_flutter_image.png",
                fit: BoxFit.fitHeight,
                width: 200,
                height: 200,
                alignment: Alignment.centerLeft,
              ),
            ),
            Text("fitWidth"),
            Container(
              color: Colors.grey,
              child: Image.asset(
                "assets/lecture_flutter_image.png",
                fit: BoxFit.fitWidth,
                width: 200,
                height: 200,
              ),
            ),
            Text("cover"),
            Container(
              color: Colors.grey,
              child: Image.asset(
                "assets/lecture_flutter_image.png",
                fit: BoxFit.cover,
                width: 200,
                height: 200,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
