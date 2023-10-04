import 'package:flutter/material.dart';
import 'package:my/widget/circle.dart';
import 'package:my/widget/circle_button.dart';
import 'package:my/widget/button_text.dart';

class SixthPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10, right: 15),
                      child: ButtonText(
                        txt: 'Пропустить', 
                        width: 0.1, 
                        height: 0.025, 
                        backgroundColor: Colors.white, 
                        colortxt: Colors.blue
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.03,),
                Text(
                  'Создайте пароль',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                SizedBox(height: screenHeight * 0.03,),
                Text(
                  'Для защиты ваших персональных данных',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey
                  ),
                ),
                SizedBox(height: screenHeight * 0.035,),
                Container(
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Circle(),
                      Circle(),
                      Circle(),
                      Circle()
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.035,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleButton(txt: '1'),
                        CircleButton(txt: '2'),
                        CircleButton(txt: '3')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleButton(txt: '4'),
                        CircleButton(txt: '5'),
                        CircleButton(txt: '6')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleButton(txt: '7'),
                        CircleButton(txt: '8'),
                        CircleButton(txt: '9')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(width: 100, height: 100),
                        CircleButton(txt: '0'),
                        Container(
                          width: 100,
                          height: 100,
                          child: IconButton(
                            iconSize: 30,
                            onPressed: () {}, 
                            icon: Icon(Icons.backspace_outlined)
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ),
    );
  }
}


