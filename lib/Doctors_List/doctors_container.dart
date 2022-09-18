import 'package:flutter/material.dart';

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
                      Text(
                        '(1,254)',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )
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
                children: [
                  GestureDetector(
                      onTap: () {}, child: const Icon(Icons.arrow_forward_ios)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
