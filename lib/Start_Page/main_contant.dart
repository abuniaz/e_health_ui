import 'package:flutter/material.dart';
import 'package:health_care/Doctors_List/doctors_details.dart';
import 'package:health_care/Start_Page/contant.dart';

class MainContant extends StatelessWidget {
  const MainContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 390,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Our Services',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Content(
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const DoctorDetails())));
                        },
                        pic: 'images/chil1.png',
                        title: '   Child\nSpecialist',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Content(
                        onTab: () {},
                        pic: 'images/medi1.jpg',
                        title: 'Medicine\n  Service',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Content(
                        onTab: () {},
                        pic: 'images/devi.jpeg',
                        title: '   Devices\n Equipment',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Content(
                        onTab: () {},
                        pic: 'images/skin1.png',
                        title: 'Skin disease',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Content(
                        onTab: () {},
                        pic: 'images/am.jpeg',
                        title: 'Ambulance\n   Service',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Content(
                        onTab: () {},
                        pic: 'images/blood.png',
                        title: 'Blood Donate',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Content(
                        onTab: () {},
                        pic: 'images/den.png',
                        title: 'Dental',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Content(
                        onTab: () {},
                        pic: 'images/dia1.jpeg',
                        title: 'Diabetics\n    test',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
