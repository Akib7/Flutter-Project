import 'package:flutter/material.dart';

class Espresso extends StatelessWidget {
  const Espresso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  height: 300,
                  width: 340,
                  fit: BoxFit.cover,
                  image: AssetImage('images/espresso1.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    height: 300,
                    width: 340,
                    fit: BoxFit.cover,
                    image: AssetImage('images/espresso2.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
