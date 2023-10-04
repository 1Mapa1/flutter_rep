import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final String txt;

  CircleButton({required this.txt});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: () {
        // Действие при нажатии кнопки
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: .15,
          ),
        ),
        child: CircleAvatar(
          child: Text(
            txt,
            style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromRGBO(245, 245, 249, 1),
        ),
      ),
    );
  }
}