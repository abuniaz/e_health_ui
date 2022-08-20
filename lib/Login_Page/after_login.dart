import 'package:flutter/material.dart';
import 'package:health_care/Sign_Up/home.dart';

class DontAccount extends StatelessWidget {
  const DontAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            const Text(
              "don't have any account? Please",
              style: TextStyle(fontSize: 15),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainSignUp(),
                  ),
                );
              },
              child: const Text("Sign Up"),
            )
          ],
        ),
      ),
    );
  }
}
