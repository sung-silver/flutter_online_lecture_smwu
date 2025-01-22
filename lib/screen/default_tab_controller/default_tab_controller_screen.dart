import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultTabControllerScreen extends StatefulWidget {
  const DefaultTabControllerScreen({super.key});

  @override
  State<DefaultTabControllerScreen> createState() =>
      _DefaultTabControllerScreenState();
}

class _DefaultTabControllerScreenState extends State<DefaultTabControllerScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
        length: 3, vsync: this, initialIndex: 1); // initialIndex: 탭바의 시작 위치
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DefaultTabController"),
        ),
        body: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                _tabBar(),
                SizedBox(height: 400, child: _tabBarView()),
              ],
            )));
  }

  TabBar _tabBar() {
    // 함수명 앞에 under score를 사용하면 private의 의미를 가짐
    return TabBar(
      controller: tabController,
      labelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: [
        Tab(text: "탭 A"),
        Tab(text: "탭 B"),
        Tab(text: "탭 C"),
      ],
    );
  }

  TabBarView _tabBarView() {
    return TabBarView(
      viewportFraction: 0.9,
      controller: tabController,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset("assets/lecture_flutter_image.png"),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            color: Colors.red),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            color: Colors.blue),
      ],
    );
  }
}
