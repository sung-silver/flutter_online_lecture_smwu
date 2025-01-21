import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});
  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}
class _MemberListScreenState extends State<MemberListScreen> {
  Dio dio = Dio(BaseOptions(baseUrl: "https://244b-110-8-126-227.ngrok-free.app"));
  @override
  void initState() {
    // TODO: implement initState
    getDate();
    super.initState();
  }
  Future<void> getDate() async {
    Response response = await dio.get("/api/v1/member/all");
    print(response.statusCode.toString());
    print(response.data);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("member list")),
    );
  }
}