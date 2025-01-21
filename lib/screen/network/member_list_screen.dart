import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  bool loading = true;
  Dio dio =
      Dio(BaseOptions(baseUrl: "https://244b-110-8-126-227.ngrok-free.app"));

  @override
  void initState() {
    // TODO: implement initState
    getDate();
    super.initState();
  }

  Future<void> getDate() async {
    Response response = await dio.get("/api/v1/member/all");
    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("member list")),
      body: loading
          ? CircularProgressIndicator()
          : SingleChildScrollView(
              child: Column(
                children: [Text("data 호출 완료")],
              ),
            ),
    );
  }
}
