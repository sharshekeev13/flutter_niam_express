import 'package:flutter/material.dart';
import 'package:niam_express_food_app/constans/constans.dart';
import 'package:niam_express_food_app/data/data.dart';
import 'package:niam_express_food_app/screens/home/widgets/appbar_widget.dart';
import 'package:niam_express_food_app/screens/home/widgets/bottom_nav_bar_widget.dart';
import 'package:niam_express_food_app/screens/home/widgets/category_widget.dart';
import 'package:niam_express_food_app/screens/home/widgets/search_bar_widget.dart';

import 'widgets/item_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> items = Data.getData();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(height: height),
              Text(
                'fOOD',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                    color: MyConstans.blackWithOpacity7),
              ),
              Text(
                'Delivery',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: MyConstans.greyTextColor,
                ),
              ),
              const SearchBarWidget(),
              const SizedBox(height: 15),
              _generateCategory(),
              _generateItems(size),
            ],
          ),
        ),
        const BottomNavBarHomePageWidget(),
      ],
    ));
  }

  Widget _generateCategory() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CategoryWidget(
            name: 'ALL', photo: 'assets/images/all.png', isSelected: true),
        CategoryWidget(
            name: 'FRIED', photo: 'assets/images/fried.png', isSelected: false),
        CategoryWidget(
            name: 'PIZZA', photo: 'assets/images/pizza.png', isSelected: false),
        CategoryWidget(
            name: 'SALAD', photo: 'assets/images/salad.png', isSelected: false),
      ],
    );
  }

  Widget _generateItems(Size size) {
    return Expanded(
      child: SizedBox(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          children: items
              .map((data) => ItemCard(
                    item: data,
                    size: size,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
