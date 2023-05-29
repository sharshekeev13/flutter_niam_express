import 'package:flutter/material.dart';

import '../../../constans/constans.dart';
import '../../../data/data.dart';

// ignore: must_be_immutable
class ItemCard extends StatelessWidget {
  Item item;
  Size size;

  ItemCard({
    super.key,
    required this.item,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 50),
          margin: const EdgeInsets.only(top: 60),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: MyConstans.greySearchColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Text(
                item.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const Text(
                'Add to cart',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Text(
                '${item.price}\$',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Image.asset(item.image),
      ],
    );
  }
}
