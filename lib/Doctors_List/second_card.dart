import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({
    Key? key,
    required this.press,
    required this.title,
  }) : super(key: key);
  final Function() press;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 54, 89, 244),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'images/nu.png',
                  height: 70,
                  width: 50,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Lorem ipsum is placeholder\n text commonly used in the \ngraphic',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
