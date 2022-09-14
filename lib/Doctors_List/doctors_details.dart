import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            height: 100,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('100 doctors found for medicine',
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.filter_list_outlined),
                          Text('Filter')
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
