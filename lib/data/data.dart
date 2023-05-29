class Item {
  String name;
  String image;
  int price;
  Item({required this.name, required this.image, required this.price});
}

class Data {
  static List<Item> getData() {
    return [
      Item(name: 'Egg Fried', image: 'assets/images/food_1.png', price: 25),
      Item(name: 'Dakar EGG ', image: 'assets/images/food_2.png', price: 15),
      Item(name: 'Egg Fried', image: 'assets/images/food_3.png', price: 25),
      Item(name: 'Salad', image: 'assets/images/food_4.png', price: 15),
    ];
  }
}
