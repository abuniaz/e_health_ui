import 'package:flutter/material.dart';
import 'package:health_care/Doctor_profile/doc_name.dart';

class DocProfile extends StatelessWidget {
  const DocProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 330,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.person,
                      size: 100,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Consulting Fee',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '400 BDT',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.yellow.shade100,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const DocName(),
            ],
          ),
        ),
      ),
    );
  }
}
