import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  Content({
    Key? key,
    required this.onTab,
    required this.pic,
    required this.title,
  }) : super(key: key);
  String pic;
  String title;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        height: 150,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Image.asset(
              pic,
              height: 75,
              width: 120,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
