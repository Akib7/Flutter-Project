import 'package:delivering_app/screens/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/LoginForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginForm(),
    );
  }
}
