import 'package:flutter/material.dart';

import '../../../constans/constans.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: MyConstans.greySearchColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: const Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
          labelText: 'Search Food...',
          labelStyle: TextStyle(
            color: MyConstans.greyTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          suffixIcon: const Icon(
            Icons.mic,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }
}
