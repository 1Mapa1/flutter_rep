import 'package:flutter/material.dart';
import 'package:my/pages/welcome_second_page.dart';
import 'package:my/widget/button.dart';
import 'package:my/widget/button_text.dart';
import 'package:my/widget/img.dart';
import 'package:my/widget/img_cross.dart';
import 'package:my/widget/text_container.dart';
import 'package:my/pages/email_page.dart';

class ThirdPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: ButtonText(
                          txt: 'Пропустить', 
                          width: 0.1, 
                          height: 0.05, 
                          backgroundColor: Colors.white, 
                          colortxt: Colors.blue
                        ),
                      ),
                      SizedBox(width:screenWidth * 0.2),
                      Container(
                        child: CrossImage(
                          txt: 'img', 
                          width: 0.5, 
                          height: 0.20, 
                          colortxt: Colors.white
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.1,),
                  Column(
                    children: [
                      Center(
                        child: TextPlace(
                          txt: 'Мониторинг', 
                          st: FontWeight.bold, 
                          width: 0.4, 
                          height: 0.04, 
                          backgroundColor: Colors.white, 
                          colortxt: Colors.green, 
                          size: 24
                        ), 
                      ),
                      SizedBox(height: screenHeight * 0.015,),
                      Center(
                        child: TextPlace(
                          txt: 'Наши врачи всегда наблюдают за вашими показателями здоровья', 
                          st: FontWeight.normal, 
                          width: 0.7, 
                          height: 0.05, 
                          backgroundColor: Colors.white, 
                          colortxt: Color.fromRGBO(147, 147, 150, 1), 
                          size: 18
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                        txt: 'Назад', 
                        page: (context) => SecondPage(), 
                        width: 0.3, 
                        height: 0.05, 
                        backgroundColor: Color.fromARGB(255, 2, 130, 180), 
                        colortxt: Colors.white
                      ),
                      SizedBox(width: screenWidth * 0.03),
                      Button(
                        txt: 'Дальше', 
                        page:(context) => FourthPage(), 
                        width: 0.3, 
                        height: 0.05, 
                        backgroundColor: Color.fromARGB(255, 2, 130, 180), 
                        colortxt: Colors.white
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.1,),
                  ImageMain(
                    txt: '', 
                    width: 0.8, 
                    height: 0.3, 
                    colortxt: Colors.white, 
                    picture: 'assets/images/third_image.jpg'
                  )
                ],
              ),
              
            ),
          ) ,
        ),
      )
    );
  }

  
}