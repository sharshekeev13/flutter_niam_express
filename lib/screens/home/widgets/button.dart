import 'package:flutter/material.dart';
import 'package:niam_express_food_app/constans/constans.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  IconData? iconData;

  PrimaryButton({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: MyConstans.primaryColor,
                    width: 2,
                  ),
                ),
                child: const Icon(Icons.navigate_next),
              ),
            ),
            Center(
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyConstans.primaryColor,
                ),
                child: const Icon(
                  Icons.navigate_next,
                  size: 36,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
