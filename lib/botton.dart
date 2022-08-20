import 'package:flutter/material.dart';
import 'package:health_care/constant.dart';

class BottonWidget extends StatelessWidget {
  const BottonWidget({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: press,
      child: Container(
        height: 50,
        width: 170,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
