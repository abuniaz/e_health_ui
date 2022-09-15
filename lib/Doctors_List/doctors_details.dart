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
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      child: const TextField(
                          decoration: InputDecoration(
                              hintText: "Search doctor's name")),
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
        )
      ],
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
