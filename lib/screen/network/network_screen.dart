import 'package:flutter/material.dart';
import 'member_list_screen.dart';
import 'member_register_screen.dart';

class NetworkScreen extends StatefulWidget {
  const NetworkScreen({super.key});

  @override
  State<NetworkScreen> createState() => _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("network_screen")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MemberRegisterScreen();
              }));
            },
            child: Text("회원가입"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MemberListScreen();
              }));
            },
            child: Text("멤버 목록"),
          )
        ],
      ),
    );
  }
}
