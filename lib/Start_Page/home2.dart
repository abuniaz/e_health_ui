import 'package:flutter/material.dart';
import 'package:health_care/Start_Page/contant.dart';
import 'package:health_care/Start_Page/drawer_site.dart';
import 'package:health_care/Start_Page/row_with_fea_One.dart';
import 'package:health_care/Start_Page/search_bar.dart';

class HomeTwo extends StatefulWidget {
  const HomeTwo({Key? key}) : super(key: key);

  @override
  State<HomeTwo> createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Find Doctor',
      style: optionStyle,
    ),
    Text(
      'Index 2: Department',
      style: optionStyle,
    ),
    Text(
      'Index 3: History',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'E_Health',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle),
          ),
        ],
        backgroundColor: Colors.teal[300],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal[300],
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              //const SearchBar(),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue.shade100,
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Search your Specialist',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.purple,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 390,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Our Services',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        const SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Content(
                                onTab: () {},
                                pic: 'images/medi1.jpg',
                                title: 'Medicine\n  Service',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Content(
                                onTab: () {},
                                pic: 'images/chil1.png',
                                title: '   Child\nSpecialist',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Content(
                                onTab: () {},
                                pic: 'images/devi.jpeg',
                                title: '   Devices\n Equipment',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Content(
                                onTab: () {},
                                pic: 'images/skin1.png',
                                title: 'Skin disease',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Content(
                                onTab: () {},
                                pic: 'images/am.jpeg',
                                title: 'Ambulance\n   Service',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Content(
                                onTab: () {},
                                pic: 'images/blood.png',
                                title: 'Blood Donate',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Content(
                                onTab: () {},
                                pic: 'images/den.png',
                                title: 'Dental',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Content(
                                onTab: () {},
                                pic: 'images/dia1.jpeg',
                                title: 'Diabetics\n    test',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: const Drawer(
        child: DrawerListview(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(83, 10, 14, 238),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Doctor List',
            backgroundColor: Color.fromARGB(186, 19, 48, 41),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Department',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_edu),
            label: 'History',
            backgroundColor: Color.fromARGB(255, 92, 42, 42),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
