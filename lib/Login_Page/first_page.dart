import 'package:flutter/material.dart';
import 'package:health_care/Login_Page/s_body.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Sign In",
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
      ),
      body: const Body1(),
    );
  }
}
