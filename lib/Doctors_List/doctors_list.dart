import 'package:flutter/material.dart';

class DoctorsHome extends StatelessWidget {
  const DoctorsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Please Select a Department',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Department'),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: ((context, index) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                              'Lorem ipsum is placeholder text commonly \n used in the graphic')
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Icon(Icons.arrow_forward_ios)
                                    ],
                                  ),
                                )),
                          ),
                          Container(
                            height: 300,
                            width: double.infinity,
                            color: Colors.red,
                          ),
                        ],
                      ))))
        ],
      ),
    );
  }
}
