// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class RowWithFeatureOne extends StatelessWidget {
  const RowWithFeatureOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Feature(
                name: 'Seat Booking',
                img: 'images/bed.png',
                press: () {},
              ),
              Feature(
                name: 'Medicine',
                img: 'images/medi2.jpg',
                press: () {},
              ),
              Feature(
                name: 'Dental',
                img: 'images/den.jpg',
                press: () {},
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Feature(
                name: 'Optometry',
                img: 'images/op4.jpg',
                press: () {},
              ),
              Feature(
                name: 'Ambulance',
                img: 'images/am.png',
                press: () {},
              ),
              Feature(
                name: 'Doctors Time',
                img: 'images/dt.png',
                press: () {},
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Feature(
                name: 'Blood Donate',
                img: 'images/b.png',
                press: () {},
              ),
              Feature(
                name: 'Physiotheraphy',
                img: 'images/ph.png',
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Feature extends StatelessWidget {
  Feature({
    Key? key,
    required this.name,
    required this.img,
    required this.press,
  }) : super(key: key);
  final String name;
  final String img;

  void Function() press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage(
                    img,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black38),
          )
        ],
      ),
    );
  }
}
