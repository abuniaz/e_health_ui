import 'package:flutter/material.dart';
import 'package:health_care/constant.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),

        // ignore: deprecated_member_use
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Color(0xFF888888),
            fontSize: 18,
          ),
        ),
        centerTitle: true),
    textTheme: const TextTheme(
        bodyText1: TextStyle(color: kTextColor),
        bodyText2: TextStyle(color: kTextColor)),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        focusColor: Colors.blue),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
