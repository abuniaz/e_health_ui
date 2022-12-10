import 'package:flutter/material.dart';

class DocName extends StatelessWidget {
  const DocName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dr. Golam Muodud Ahmed',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'MBBS',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Bangldesh Bar Association',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.tealAccent),
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
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                  ),
                  Text(
                    '/4.9',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text('Working in'),
              const Text(
                'Bangladesh Bar Association',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
