import 'package:flutter/material.dart';
import 'package:health_care/Doctors_List/doctors_details.dart';
import 'package:health_care/Doctors_List/first_card.dart';
import 'package:health_care/Doctors_List/second_card.dart';

class DoctorsHome extends StatelessWidget {
  const DoctorsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Please Select a Department',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Department',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20), gapPadding: 4),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blue),
                    gapPadding: 4,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: ((context, index) => Column(
                    children: [
                      CardWithColum(
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const DoctorDetails()),
                            ),
                          );
                        },
                      ),
                      SecondCard(
                        press: () {},
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
