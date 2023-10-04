import 'package:flutter/material.dart';

class Circle extends StatelessWidget {  @override
  Widget build(BuildContext context) {

    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Color.fromARGB(255, 14, 89, 220),
          width: 1,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}
