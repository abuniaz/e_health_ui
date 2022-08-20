import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({
    Key? key,
  }) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: checkbox,
          onChanged: (val) {
            setState(() {
              checkbox = val!;
            });
          },
          activeColor: Colors.blue,
        ),
        const Text(
          "Remember me",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        const SizedBox(
          width: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Forgotten password",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}
