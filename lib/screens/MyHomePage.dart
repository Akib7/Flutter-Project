import 'package:delivering_app/screens/DetailPage.dart';

import 'package:delivering_app/screens/getTabBar.dart';
import 'package:delivering_app/screens/Item_pictures.dart';
import 'package:flutter/material.dart';

import '../config/constants.dart';
import '../home/drawer.dart';
import 'Restaurants.dart';
import 'dropDown.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColour,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
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
        ],
      ),
      drawer: DrawerData(),
      backgroundColor: Colors.grey[100],
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [

              //       ClipRRect(
              //         borderRadius: BorderRadius.circular(20),
              //         child: Image(
              //           height: 40,
              //           width: 40,
              //           fit: BoxFit.cover,
              //           image: AssetImage('images/cr7.jpg'),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                width: 8,
                height: 24,
              ),
              dropDown(),
              getTabBar(),
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
              Restaurants(),
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
              itemPictures(),
            ],
          ),
        ),
      ),
    );
  }
}
