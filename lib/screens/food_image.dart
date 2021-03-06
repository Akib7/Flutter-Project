import 'package:flutter/material.dart';

class FoodImage extends StatelessWidget {
  final String imageName;

  FoodImage(this.imageName);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ClipRRect(
              child: Container(
                height: height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  image: DecorationImage(
                    image: AssetImage('images/' + imageName),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlatButton(
                        minWidth: 5,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white.withOpacity(.7),
                        ),
                      ),
                      FlatButton(
                        minWidth: 3,
                        onPressed: () {},
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white.withOpacity(.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
