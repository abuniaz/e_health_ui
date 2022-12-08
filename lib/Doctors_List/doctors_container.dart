import 'package:flutter/material.dart';

class DoctorsName extends StatelessWidget {
  const DoctorsName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(181, 131, 217, 238),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image.asset(
                    'images/D1.png',
                    height: 100,
                    width: 60,
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.yellow,
                      ),
                      Column(
                        children: const [
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
                      ),
                      // Text(
                      //   '(1,254)',
                      //   style: TextStyle(
                      //     fontSize: 14,
                      //     color: Colors.black,
                      //   ),
                      // )
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
                  Text(
                    'MBBS',
                    style: TextStyle(color: Colors.black),
                  ),
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
                  Text(
                    'Bangladesh Bar \nAssociation',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '60 BDT(inc.vat)',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
