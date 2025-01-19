import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({super.key});

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  // String textValue = '';
  TextEditingController controller = TextEditingController();

  /// 생명주기
  /// 시작과 끝.

  /// 위젯이 생성될 때 최초 한 번만 진입
  /// build 함수보다 먼저 호출
  /// setState 호출 불가
  @override
  void initState() {
    // TODO: implement initState
    // input 값이 변경될 때마다 이벤트 리스너 호출
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  /// 위젯이 종료될 때 한 번 호출
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 화면 클릭 시 focus 해제
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('TextFormField'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(controller.text),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: controller,
                  // onChanged: (value) {
                  //   textValue = value;
                  //   setState(() {});
                  //   print('controller : ${controller.text}');
                  // },

                  keyboardType: TextInputType.visiblePassword,
                  /// 비밀번호를 *로 표시
                  /// maxLine이 1이어야 함
                  // obscureText: true,

                  /// 글자 속성 변경
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),

                  cursorColor: Colors.black,
                  cursorWidth: 6,
                  cursorRadius: Radius.circular(5),

                  // 화면에 보이는 line의 최대 개수
                  maxLines: 2,
                  maxLength: 20,
                  decoration: InputDecoration(
                    hintText: '글자를 입력해주세요',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.purple,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
