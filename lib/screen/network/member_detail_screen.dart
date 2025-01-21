import 'package:flutter/material.dart';

class MemberDetailScreen extends StatefulWidget {
  const MemberDetailScreen({required this.email, super.key});

  final String email;

  @override
  State<MemberDetailScreen> createState() => _MemberDetailScreenState();
}

class _MemberDetailScreenState extends State<MemberDetailScreen> {
  final idController = TextEditingController();
  final pwController = TextEditingController();
  final descriptionController = TextEditingController();

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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(double.infinity, 50)),
                child: Text("update")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(double.infinity, 50)),
                child: Text("delete")),
          ],
        ),
      ),
    );
  }
}
