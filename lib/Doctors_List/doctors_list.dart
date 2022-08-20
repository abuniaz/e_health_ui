import 'package:flutter/material.dart';
import 'package:health_care/Doctors_List/categories.dart';
import 'package:health_care/Doctors_List/search_bar.dart';

class DoctorsHome extends StatelessWidget {
  const DoctorsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Doctors List',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.blueGrey,
        child: ListView(
          children: const [
            SizedBox(
              height: 40,
            ),
            SearchBar(),
            Categories()
          ],
        ),
      ),
    );
  }
}
