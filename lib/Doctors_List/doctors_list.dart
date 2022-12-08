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
            height: 40,
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Container(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search department',
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
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
                        title: 'Cardiology Department',
                      ),
                      SecondCard(
                        press: () {},
                        title: 'Neurology Department',
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
