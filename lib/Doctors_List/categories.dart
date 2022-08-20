import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final bool _isSelectedColor = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Contant(
            isSelectedColor: _isSelectedColor,
            name: 'All',
          ),
          Contant(
            isSelectedColor: _isSelectedColor,
            name: 'Medicine',
          ),
          Contant(
            isSelectedColor: _isSelectedColor,
            name: 'Dental',
          ),
          Contant(
            isSelectedColor: _isSelectedColor,
            name: 'Optometry',
          )
        ],
      ),
    );
  }
}

class Contant extends StatelessWidget {
  const Contant({
    Key? key,
    required bool isSelectedColor,
    required this.name,
  })  : _isSelectedColor = isSelectedColor,
        super(key: key);

  final bool _isSelectedColor;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 100,
      decoration: BoxDecoration(
        color: _isSelectedColor ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
