import 'package:flutter/material.dart';

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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      Container(
                        height: 45,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: "Search by doctor's name"),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('100 doctors found for medicine',
                          style: TextStyle(fontSize: 16, color: Colors.black)),
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
          const DoctorsName()
        ],
      ),
    );
  }
}

class DoctorsName extends StatelessWidget {
  const DoctorsName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(181, 131, 217, 238),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    'images/D1.png',
                    height: 100,
                    width: 60,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.yellow,
                      ),
                      Text(
                        '4.8',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('(1,254)',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ))
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Dr. Golam Muodud Ahmed',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('MBBS', style: TextStyle(color: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'General Physician',
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Bangladesh Bar Association',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  Spacer(),
                  Text(
                    '60 BDT(inc.vat)',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.arrow_forward_ios),
                ],
              )
            ],
          ),
        ),
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
