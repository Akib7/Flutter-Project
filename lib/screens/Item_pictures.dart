import 'package:flutter/material.dart';

import 'DetailPage.dart';

class itemPictures extends StatelessWidget {
  const itemPictures({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        style: TextStyle(color: Colors.white, fontSize: 15),
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
    );
  }
}
