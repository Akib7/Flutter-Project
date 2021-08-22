import 'package:delivering_app/screens/Burger.dart';
import 'package:delivering_app/screens/Capuccino.dart';
import 'package:delivering_app/screens/Chicken.dart';
import 'package:delivering_app/screens/CrimsonCup.dart';
import 'package:delivering_app/screens/DetailPage.dart';
import 'package:delivering_app/screens/Espresso.dart';
import 'package:delivering_app/screens/Fastfood.dart';
import 'package:delivering_app/screens/FoodContainer.dart';
import 'package:delivering_app/screens/FrozenLatte.dart';
import 'package:delivering_app/screens/KFC.dart';
import 'package:delivering_app/screens/MadChef.dart';
import 'package:delivering_app/screens/Mocha.dart';
import 'package:delivering_app/screens/Pasta.dart';
import 'package:delivering_app/screens/Pizza.dart';
import 'package:delivering_app/screens/Steak.dart';
import 'package:delivering_app/screens/getTabBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main.dart';
import 'dropDown.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.yellow[700],
                      iconSize: 40,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                        image: AssetImage('images/cr7.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
              dropDown(),
              Container(
                height: 150,
                width: 550,
                child: getTabBar(),
              ),
              SizedBox(
                width: 20,
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Restaurants",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailPage(),
                            ),
                          );
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => FoodContainer()),
                          );
                        },
                        child: Container(
                          height: 307,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 8,
                                blurRadius: 15,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      height: 140,
                                      width: 280,
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/burger1.jpg'),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    // alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(70),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          "McDonald's",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow[700],
                                            size: 14,
                                          ),
                                          Text(
                                            "(25+)",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Icon(
                                                Icons.delivery_dining,
                                                color: Colors.red[700],
                                                size: 14,
                                              ),
                                            ),
                                            Text(
                                              "Free Delivery",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Icon(
                                              Icons.timelapse,
                                              color: Colors.red[700],
                                              size: 14,
                                            ),
                                          ),
                                          Text(
                                            "(10-15 mins)",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Burger(),
                                            ),
                                          );
                                        },
                                        child: Text("Burger"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Chicken(),
                                            ),
                                          );
                                        },
                                        child: Text("Chicken"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Fastfood(),
                                            ),
                                          );
                                        },
                                        child: Text("Fastfood"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlatButton(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 2,
                                            horizontal: 10,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => Steak(),
                                              ),
                                            );
                                          },
                                          child: Text("Steak"),
                                          color: Colors.grey[200],
                                          minWidth: 1,
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => KFC(),
                            ),
                          );
                        },
                        child: Container(
                          height: 307,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 8,
                                blurRadius: 15,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      height: 140,
                                      width: 280,
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/burger2.jpg'),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    // alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(70),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          "KFC",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "3.5",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow[700],
                                            size: 14,
                                          ),
                                          Text(
                                            "(15+)",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Icon(
                                                Icons.delivery_dining,
                                                color: Colors.red[700],
                                                size: 14,
                                              ),
                                            ),
                                            Text(
                                              "Free Delivery",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Icon(
                                              Icons.timelapse,
                                              color: Colors.red[700],
                                              size: 14,
                                            ),
                                          ),
                                          Text(
                                            "(20-25 mins)",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Chicken(),
                                            ),
                                          );
                                        },
                                        child: Text("Chicken"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Burger(),
                                            ),
                                          );
                                        },
                                        child: Text("Burger"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Fastfood(),
                                            ),
                                          );
                                        },
                                        child: Text("Fastfood"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlatButton(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 2,
                                            horizontal: 10,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => Steak(),
                                              ),
                                            );
                                          },
                                          child: Text("Steak"),
                                          color: Colors.grey[200],
                                          minWidth: 1,
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => MadChef(),
                            ),
                          );
                        },
                        child: Container(
                          height: 307,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 8,
                                blurRadius: 15,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      height: 140,
                                      width: 280,
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/pizza.jpg'),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    // alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(70),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          "MadChef",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "4.0",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow[700],
                                            size: 14,
                                          ),
                                          Text(
                                            "(20+)",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Icon(
                                                Icons.delivery_dining,
                                                color: Colors.red[700],
                                                size: 14,
                                              ),
                                            ),
                                            Text(
                                              "Free Delivery",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Icon(
                                              Icons.timelapse,
                                              color: Colors.red[700],
                                              size: 14,
                                            ),
                                          ),
                                          Text(
                                            "(15-20 mins)",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Pizza(),
                                            ),
                                          );
                                        },
                                        child: Text("Pizza"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Pasta(),
                                            ),
                                          );
                                        },
                                        child: Text("Pasta"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Fastfood(),
                                            ),
                                          );
                                        },
                                        child: Text("Fastfood"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlatButton(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 2,
                                            horizontal: 10,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => Burger(),
                                              ),
                                            );
                                          },
                                          child: Text("Burger"),
                                          color: Colors.grey[200],
                                          minWidth: 1,
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => CrimsonCup()),
                          );
                        },
                        child: Container(
                          height: 307,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 8,
                                blurRadius: 15,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      height: 140,
                                      width: 280,
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/crimson.jpg'),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    // alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(70),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          "Crimson Cup",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "5.0",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow[700],
                                            size: 14,
                                          ),
                                          Text(
                                            "(35+)",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Icon(
                                                Icons.delivery_dining,
                                                color: Colors.red[700],
                                                size: 14,
                                              ),
                                            ),
                                            Text(
                                              "Free Delivery",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Icon(
                                              Icons.timelapse,
                                              color: Colors.red[700],
                                              size: 14,
                                            ),
                                          ),
                                          Text(
                                            "(10-15 mins)",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Espresso(),
                                            ),
                                          );
                                        },
                                        child: Text("Espresso"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Mocha(),
                                            ),
                                          );
                                        },
                                        child: Text("Mocha"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                      FlatButton(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 10,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => FrozenLatte(),
                                            ),
                                          );
                                        },
                                        child: Text("Frozen Latte"),
                                        color: Colors.grey[200],
                                        minWidth: 1,
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlatButton(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 2,
                                            horizontal: 10,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => Capuccino(),
                                              ),
                                            );
                                          },
                                          child: Text("Cappuccino"),
                                          color: Colors.grey[200],
                                          minWidth: 1,
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 28),
                    child: Text(
                      "Popular Items",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                height: 140,
                                width: 150,
                                fit: BoxFit.cover,
                                image: AssetImage('images/crimson.jpg'),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              // alignment: Alignment.topLeft,
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(70),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: TextButton.icon(
                                label: Text(
                                  'View all',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => DetailPage(),
                                    ),
                                  );
                                },
                                icon: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(150),
                                  ),
                                  child: Icon(
                                    Icons.arrow_right_alt_outlined,
                                    color: Colors.red,
                                    size: 35,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 140,
                        width: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 10,
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                height: 140,
                                width: 150,
                                fit: BoxFit.cover,
                                image: AssetImage('images/pizza.jpg'),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              // alignment: Alignment.topLeft,
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(70),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 10,
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            height: 140,
                            width: 150,
                            fit: BoxFit.cover,
                            image: AssetImage('images/burger1.jpg'),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          // alignment: Alignment.topLeft,
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(70),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 140,
                        width: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 10,
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                height: 140,
                                width: 150,
                                fit: BoxFit.cover,
                                image: AssetImage('images/burger2.jpg'),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              // alignment: Alignment.topLeft,
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(70),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
