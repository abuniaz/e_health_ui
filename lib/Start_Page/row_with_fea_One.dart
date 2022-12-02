// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class RowWithFeatureOne extends StatelessWidget {
  const RowWithFeatureOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        width: double.infinity,
        color: Colors.red,
      ),
    );
  }
}
