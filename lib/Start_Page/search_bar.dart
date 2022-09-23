import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Container(
        decoration: const BoxDecoration(),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Search by doctor's name or spacialty",
            suffixIcon: const Icon(Icons.search),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10), gapPadding: 4),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.blue),
              gapPadding: 4,
            ),
          ),
        ),
      ),
    );
  }
}
