import 'package:flutter/material.dart';
import 'package:health_care/Login_Page/first_page.dart';
import 'package:health_care/botton.dart';
import 'package:health_care/splash_services.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  SplashServices homepage = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homepage.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            'images/M.jpg',
          ))),
        ),
      ),
    );
  }
}
