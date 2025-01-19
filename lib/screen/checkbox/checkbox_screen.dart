import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Column(
        children: [
          Checkbox(
            value: checked,
            onChanged: (value) {
              print('value : $value');
              /// !를 추가하면 null이 아닌게 확실하다는 의미
              checked = value!;
              setState(() {});
            },
          ),
          InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () {
              checked = !checked;
              setState(() {});
            },
            child: Image.asset(
              checked ? 'assets/checked_box.png' : 'assets/unchecked_box.png',
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
