import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 8, vsync: this);

  /// 실습
  /// 1. Tab 안에 들어가는 문자열들을 배열로 만드세요
  /// 2. List.generate를 사용해서 Tab들을 추가하세요
  /// 3. onTap 함수가 호출 됐을 때 선택된 Tab의 문자열을 Text로 출력하세요

  String selectedTab = "none";
  final List<String> labelList = [
    "코끼리",
    "호랑이",
    "사자",
    "얼룩말",
    "하마",
    "하이에나",
    "강아지",
    "고양이"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("TabBar"),
      ),
      body: Column(children: [
        Text(selectedTab,
        style: TextStyle(fontSize: 20),),
        TabBar(
          controller: tabController,
          onTap: (index) {
            selectedTab = labelList[index];
            print(index);
            setState(() {
            });
          },
          isScrollable: true,
          labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          overlayColor: WidgetStateProperty.all(Colors.blue.shade100),
          splashBorderRadius: BorderRadius.circular(10),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 5, color: Colors.red),
          ),
          dividerColor: Colors.black,
          padding: EdgeInsets.all(30),
          tabs: List.generate(labelList.length, (index) => Tab(text: labelList[index])),
        ),
      ]),
    );
  }
}
