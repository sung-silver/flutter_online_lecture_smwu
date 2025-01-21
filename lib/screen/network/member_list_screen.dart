import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model/MemberModel.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  Dio dio =
      Dio(BaseOptions(baseUrl: "https://244b-110-8-126-227.ngrok-free.app"));
  bool loading = true;
  List<MemberModel> dataList = [];

  @override
  void initState() {
    // TODO: implement initState
    getDate();
    super.initState();
  }

  Future<void> getDate() async {
    Response response = await dio.get("/api/v1/member/all");

    /// as: casting
    /// Iterable: repeative data
    /// element: {"email":"abc@naver.com", "description":""}
    // dataList = (response.data as Iterable).map<MemberModel>((element) {
    //   Map<String, String> value = element as Map<String, String>;
    //   return MemberModel(
    //       /// ?? : case null -> give base value
    //       value["email"] ?? "",
    //       value["description"] ?? ""
    //   );
    // }).toList();
    /// short code

    dataList = response.data
        .map<MemberModel>(
            (e) => MemberModel(e["email"] ?? "", e["description"] ?? ""))
        .toList();
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
                children: [Text(dataList.toString())],
              ),
            ),
    );
  }
}
