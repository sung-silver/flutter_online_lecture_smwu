import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../assets_path.dart';

class HomeShortCut extends StatelessWidget {
  HomeShortCut({super.key});

  final List<String> iconList = [
    AssetsPath.jacket,
    AssetsPath.jumper,
    AssetsPath.necklace,
    AssetsPath.bag,
    AssetsPath.cap,
    AssetsPath.skirt,
    AssetsPath.trousers,
    AssetsPath.shirt,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16),
      children: List.generate(
        iconList.length,
        (index) {
          return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(70, 70),
                padding: EdgeInsets.all(16),
                backgroundColor: Color(0xffFFE0C4),
                elevation: 0,
                overlayColor: Colors.black
              ),
              child: Image.asset(iconList[index], fit: BoxFit.cover),
            ),
          ]);
        },
      ),
    );
  }
}
