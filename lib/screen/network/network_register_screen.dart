import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetworkRegisterScreen extends StatefulWidget {
  const NetworkRegisterScreen({super.key});

  @override
  State<NetworkRegisterScreen> createState() => _NetworkRegisterScreenState();
}

class _NetworkRegisterScreenState extends State<NetworkRegisterScreen> {
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
              onPressed: () {
                /// 회원가입 api 연결
                Dio dio = Dio(BaseOptions(
                    baseUrl: "https://8bff-110-8-126-227.ngrok-free.app"));

                dio.post("/api/v1/member", data: {
                  "email": idController.text,
                  "password": pwController.text
                });
              },
              child: Text("회원가입"))
        ],
      ),
    );
  }
}
