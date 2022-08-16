import 'package:delivering_app/config/constants.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ReviewCart extends StatelessWidget {
  ReviewCart({Key? key}) : super(key: key);

  confirmDialog(BuildContext context) {
    Get.defaultDialog(
        title: "Food Cart",
        backgroundColor: primaryColour,
        titleStyle: TextStyle(color: Colors.white),
        middleTextStyle: TextStyle(color: Colors.white),
        textConfirm: "Yes",
        onConfirm: () {},
        onCancel: () {
          Get.to(() => ReviewCart());
        },
        textCancel: "No",
        cancelTextColor: Colors.white,
        confirmTextColor: Colors.white,
        buttonColor: Colors.red,
        barrierDismissible: false,
        radius: 20,
        content: Column(
          children: [
            Container(
              child: Text(
                "Are you sure?",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }

  showDialog(BuildContext context) {
    Get.defaultDialog(
        title: "Food Cart",
        backgroundColor: primaryColour,
        titleStyle: TextStyle(color: Colors.white),
        middleTextStyle: TextStyle(color: Colors.white),
        textConfirm: "Yes",
        onConfirm: () {
          // reviewCartProvider.reviewCartDelete(delete.cartId);
          Get.back();
          confirmDialog(context);
        },
        textCancel: "No",
        cancelTextColor: Colors.white,
        confirmTextColor: Colors.white,
        buttonColor: Colors.red,
        barrierDismissible: false,
        radius: 20,
        content: Column(
          children: [
            Container(
              child: Text(
                "Do you want to delete this item?",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }

  getSnackBar() {
    Get.snackbar(
      "Request can not be processed",
      "No Cart Data Found",
      icon: Icon(Icons.production_quantity_limits, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: primaryColour,
      borderRadius: 20,
      margin: EdgeInsets.all(15),
      colorText: Colors.white,
      duration: Duration(seconds: 4),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ListTile(
          title: Text(
            "Total Amount",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "\$ ${25}",
            style: TextStyle(
              color: Colors.green[900],
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Container(
            width: 160,
            child: MaterialButton(
              child: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: primaryColour,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {},
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: primaryColour,
          title: Text(
            "Review Cart",
            style: TextStyle(fontSize: 18),
          ),
        ),
        body: Center(
          child: Text('No Data'),
        ));
  }
}
