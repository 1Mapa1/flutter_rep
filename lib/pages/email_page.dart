import 'package:flutter/material.dart';
import 'package:my/widget/img.dart';
import 'package:my/widget/text_container.dart';
import 'package:my/widget/input_with_button.dart';

class FourthPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home:  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: screenWidth * 0.115),
                      ImageMain(
                        txt: '', 
                        width: 0.1, 
                        height: 0.05, 
                        colortxt: Colors.white, 
                        picture: 'assets/images/emojies.jpg'
                      ),
                      TextPlace(
                        txt:'Добро пожаловать', 
                        st: FontWeight.bold, 
                        width: 0.6, 
                        height: 0.05, 
                        backgroundColor: Colors.white, 
                        colortxt: Colors.black, 
                        size: 24
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: screenWidth * 0.115),
                      TextPlace(
                        txt: 'Войдите, чтобы пользоваться функциями приложения', 
                        st: FontWeight.normal, 
                        width: 0.75, 
                        height: 0.05, 
                        backgroundColor: Colors.white, 
                        colortxt: Colors.black, 
                        size: 15
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05,),
                  InputWithButton(), 
                  SizedBox(height: screenHeight * 0.3,),
                  Column(
                    children: [
                      const Text(
                        'Или войдите с помощью',
                        style: TextStyle(
                          fontSize: 16, 
                          color: Color.fromRGBO(147, 147, 150, 1),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.025,),
                      OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          )
                        ),
                        child: const Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 107),
                          child: Text(
                            'Войти с Яндекс',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ), 
                          ),
                        )
                      )
                    ],
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