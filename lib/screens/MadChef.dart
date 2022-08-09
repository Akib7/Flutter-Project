import 'package:flutter/material.dart';

import 'food_item.dart';

class MadChef extends StatelessWidget {
  const MadChef({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text =
        "Deliciously hot and kickin'!Between the corn dusted bun lies tender, juicy boneless thigh meat, encased in a crisp and crumbling spicy crust, all topped with fresh lettuce, cheese and creamy mayonnaise to set your mouth on fire. ";
    return Scaffold(
      body: FoodItem(
        imageName: 'pizza.jpg',
        iconName: 'madchef_ic.svg',
        restaurantName: 'MadChef',
        rating: '4.0',
        caloryCount: '145 Cal/200 gm',
        description: text,
        itemName: 'Delicious Pizza',
        price: '18',
        deliveryTime: '15-20 mins',
      ),
    );
  }
}
