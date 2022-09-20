import 'package:flutter/material.dart';
import 'package:health_care/Doctors_List/doctors_list.dart';

class DrawerListview extends StatelessWidget {
  const DrawerListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
              Text(
                '017xxxxxx21',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'abuniaz2000@gmail.com',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
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
    );
  }
}
