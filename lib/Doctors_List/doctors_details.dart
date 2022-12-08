import 'package:flutter/material.dart';
import 'package:health_care/Doctors_List/doctors_container.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 5,
            child: Container(
              height: 150,
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              hintText: "Search by doctor's name",
                              filled: true,
                              fillColor: Colors.blue.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('100 doctors found \nfor medicine',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      ABoxDecoration(
                        icon: Icon(Icons.filter_list),
                        title: 'Filter',
                      ),
                      ABoxDecoration(
                        icon: Icon(Icons.arrow_downward),
                        title: 'Sort by',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  DoctorsName(),
                  DoctorsName(),
                  DoctorsName(),
                  DoctorsName(),
                  DoctorsName(),
                  DoctorsName(),
                  DoctorsName(),
                  DoctorsName(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ABoxDecoration extends StatelessWidget {
  const ABoxDecoration({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 7),
            Text(title,
                style: const TextStyle(fontSize: 12, color: Colors.black))
          ],
        ),
      ),
    );
  }
}
