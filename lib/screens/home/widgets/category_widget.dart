// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../constans/constans.dart';

// ignore: must_be_immutable
class CategoryWidget extends StatelessWidget {
  String name;
  String photo;
  bool isSelected;

  CategoryWidget({
    Key? key,
    required this.name,
    required this.photo,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 14, left: 14, right: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color:
            isSelected ? MyConstans.primaryColor : MyConstans.greySearchColor,
      ),
      child: Column(
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            photo,
            width: 52,
            height: 52,
          ),
        ],
      ),
    );
  }
}
