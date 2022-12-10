import 'dart:async';

import 'package:flutter/material.dart';
import 'package:health_care/Login_Page/s_body.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Body1()));
    });
  }
}
