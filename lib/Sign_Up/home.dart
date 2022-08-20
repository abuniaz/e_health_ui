import 'package:flutter/material.dart';
import 'package:health_care/Login_Page/s_body.dart';
import 'package:health_care/botton.dart';

class MainSignUp extends StatelessWidget {
  const MainSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.black,
          ),
        )),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "First Name"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Last Name"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: "Phone Number"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(labelText: "Email Address"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Sex"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: "Old"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Password"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: "Confirm Password"),
                ),
                const SizedBox(
                  height: 20,
                ),
                BottonWidget(
                    text: "Sign Up",
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Body1()));
                    }),
              ],
            ),
          ),
        ));
  }
}
