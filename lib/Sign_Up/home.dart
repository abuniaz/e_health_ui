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
                  decoration: InputDecoration(
                    labelText: "First Name",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), gapPadding: 4),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue),
                      gapPadding: 4,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Last Name",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), gapPadding: 4),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue),
                      gapPadding: 4,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), gapPadding: 4),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue),
                      gapPadding: 4,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), gapPadding: 4),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue),
                      gapPadding: 4,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Sex",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), gapPadding: 4),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue),
                      gapPadding: 4,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Old",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), gapPadding: 4),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue),
                      gapPadding: 4,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), gapPadding: 4),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue),
                      gapPadding: 4,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), gapPadding: 4),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue),
                      gapPadding: 4,
                    ),
                  ),
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
                        builder: (context) => const Body1(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
