import 'package:flutter/material.dart';
import 'package:health_care/Doctors_List/doctors_list.dart';
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
            icon: const Icon(Icons.circle),
          ),
        ],
        backgroundColor: Colors.grey,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              height: 150,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 33,
                    ),
                    Text(
                      'Abu Niaz',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text('017xxxxxx21', style: TextStyle(color: Colors.black)),
                    Text('abuniaz2000@gmail.com',
                        style: TextStyle(color: Colors.black))
                  ],
                )),
            ListTile(
              title: Row(
                children: const [
                  Icon(Icons.edit),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
              focusColor: Colors.blue,
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(Icons.list),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Doctors List',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
              focusColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DoctorsHome(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
