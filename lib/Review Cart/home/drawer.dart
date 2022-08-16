import 'package:delivering_app/My%20Profile/myProfile.dart';
import 'package:delivering_app/config/constants.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/MyHomePage.dart';
import '../review_cart.dart';

class DrawerData extends StatefulWidget {
  DrawerData({Key? key}) : super(key: key);

  @override
  State<DrawerData> createState() => _DrawerState();
}

class _DrawerState extends State<DrawerData> {
  Widget listTile({IconData? icon, String? title, Function()? onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title!,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Drawer(
          child: Container(
            color: primaryColour,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white54,
                        radius: 43,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/cr7.jpg'),
                          radius: 40,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'userName',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.black54,
                ),
                listTile(
                    icon: Icons.home_outlined,
                    title: 'Home',
                    onTap: () {
                      Get.to(() => MyHomePage());
                    }),
                listTile(
                    icon: Icons.shop_outlined,
                    title: 'Review Cart',
                    onTap: () {
                      Get.to(() => ReviewCart());
                    }),
                listTile(
                    icon: Icons.person_outline,
                    title: 'My Profile',
                    onTap: () {
                      Get.to(() => MyProfile());
                    }),
                listTile(
                    icon: Icons.star_outline, title: 'Ratings and Reviews'),
                listTile(icon: Icons.favorite_outline, title: 'Wishlist'),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 350,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Contact Support"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Call us:"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("+8801684798521"),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Text("Mail us:"),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "delivery221@gmail.com",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
