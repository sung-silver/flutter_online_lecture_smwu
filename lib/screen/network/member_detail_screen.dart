import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberDetailScreen extends StatefulWidget {
  const MemberDetailScreen({required this.email, required this.dio, super.key});

  final String email;
  final Dio dio;

  @override
  State<MemberDetailScreen> createState() => _MemberDetailScreenState();
}

class _MemberDetailScreenState extends State<MemberDetailScreen> {
  final idController = TextEditingController();
  final pwController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    idController.text = widget.email;
    widget.dio.post("/api/v1/member/find-one", data: {
      "email": widget.email,
      "password": "hihihi",
    }).then((value) {
      /// value = {id: 14, email: abcd@naver.com, password: abcd, description: }
      pwController.text = value.data["password"];
      descriptionController.text = value.data["description"];
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    idController.dispose();
    pwController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("member detail")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              readOnly: true,
              controller: idController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "이메일을 입력해주세요."),
            ),
            TextFormField(
              controller: pwController,
              obscureText: true,
              decoration: InputDecoration(hintText: "비밀번호를 입력해주세요."),
            ),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(hintText: "개인 정보를 입력해주세요."),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  Response response =
                      await widget.dio.patch("/api/v1/member/update", data: {
                    "email": widget.email,
                    "password": pwController.text,
                    "description": descriptionController.text,
                  });
                  if (response.statusCode == 200) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("성공"),
                    ));

                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pop(context, true);
                  }
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(double.infinity, 50)),
                child: Text("update")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  Response response =
                      await widget.dio.delete("/api/v1/member/delete", data: {
                    "email": widget.email,
                    "password": pwController.text,
                  });

                  // 204: Content가 없다
                  if (response.statusCode == 204) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("delete success")));
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pop(context, true);
                  }
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(double.infinity, 50)),
                child: Text("delete")),
          ],
        ),
      ),
    );
  }
}
