import 'package:flutter/material.dart';

class MyBotton extends StatelessWidget {
  const MyBotton({super.key, required this.onPressed});
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          padding: EdgeInsets.all(25.0),
          margin: EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
              child: Text(
            'Login',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ))),
    );
  }
}
