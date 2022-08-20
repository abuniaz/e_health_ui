import 'package:flutter/material.dart';
import 'package:health_care/Login_Page/first_page.dart';
import 'package:health_care/botton.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              "images/H1.jpg",
              height: 300,
              width: double.infinity,
            ),
            const Spacer(),
            BottonWidget(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FirstPage()));
              },
              text: "Continue",
            ),
          ],
        ),
      ),
    );
  }
}
