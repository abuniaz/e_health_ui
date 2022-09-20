import 'package:flutter/material.dart';
import 'package:health_care/Doctors_List/doctors_list.dart';
import 'package:health_care/Start_Page/drawer_site.dart';
import 'package:health_care/Start_Page/row_with_fea_One.dart';

class HomeTwo extends StatelessWidget {
  const HomeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle),
          ),
        ],
        backgroundColor: Colors.teal[300],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal[300],
        child: Column(
          children: [
            Container(
              height: 150,
              width: 500,
              decoration: const BoxDecoration(),
              child: const Center(
                child: Text(
                  'Choose A Categories &\n   Find the Specialists ',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const RowWithFeatureOne()
          ],
        ),
      ),
      drawer: const Drawer(
        child: DrawerListview(),
      ),
    );
  }
}
