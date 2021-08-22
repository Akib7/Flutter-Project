import 'package:flutter/material.dart';

class ItemCountWidget extends StatefulWidget {
  @override
  _ItemCountWidgetState createState() => _ItemCountWidgetState();
}

class _ItemCountWidgetState extends State<ItemCountWidget> {
  int _counter = 0;
  void addItem() {
    setState(() {
      _counter++;
    });
  }

  void removeItem() {
    if (_counter == 0) return;
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      color: Colors.yellow[700],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            minWidth: 1,
            onPressed: removeItem,
            child: Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
          Text(
            '${_counter}',
            style: TextStyle(color: Colors.white),
          ),
          FlatButton(
            minWidth: 1,
            onPressed: addItem,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
