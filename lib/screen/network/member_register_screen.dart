import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberRegisterScreen extends StatefulWidget {
  const MemberRegisterScreen({super.key});

  @override
  State<MemberRegisterScreen> createState() => _NetworkRegisterScreenState();
}

class _NetworkRegisterScreenState extends State<MemberRegisterScreen> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

  @override
  void dispose() {
    idController.dispose();
    pwController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("register"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: idController,
          ),
          TextFormField(
            controller: pwController,
          ),
          ElevatedButton(
              onPressed: () async {
                /// 회원가입 api 연결
                Dio dio = Dio(BaseOptions(
                    baseUrl: "https://7210-110-8-126-227.ngrok-free.app"));

                var response = await dio.post("/api/v1/member", data: {
                  "email": idController.text,
                  "password": pwController.text
                });

                if(response.statusCode.toString() == "200") {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("성공"))
                  );
                }
              },
              child: Text("회원가입"))
        ],
      ),
    );
  }

  Future<void> futureBasic() async {
    print("시작");
    /// await이 있으면 해당 코드가 끝날때까지 기다린다.
    await Future.delayed(Duration(seconds: 2),(){
      print("Duartion 완료");
    });
    print("종료");
  }
}
