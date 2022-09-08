import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({
    Key? key,
    required this.press,
  }) : super(key: key);
  final Function() press;

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
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/dt.png',
                  height: 70,
                  width: 50,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  children: const [
                    Text(
                      'General Physician',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Lorem ipsum is placeholder text commonly \n used in the graphic',
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
