import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Container(
        child: Text(
          'Home Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        margin: const EdgeInsets.all(16.0),
      ),
    );
  }
}
