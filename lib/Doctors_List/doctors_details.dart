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
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    Container(
                      height: 45,
                      width: double.infinity,
                      color: const Color.fromARGB(172, 255, 255, 255),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Search by doctor's name"),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
