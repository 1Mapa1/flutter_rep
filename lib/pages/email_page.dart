import 'package:flutter/material.dart';
import 'package:my/pages/virif_email_page.dart';
import 'package:my/widget/button.dart';
import 'package:my/widget/img.dart';
import 'package:my/widget/text_container.dart';

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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              'Вход по E-mail',
                              style: TextStyle(
                                color: Color.fromRGBO(126, 126, 154, 1),
                                fontSize: 16,                         
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.3,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: 'example@mail.ru',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(126, 126, 154, 1),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.0),
                            )
                          )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02,),
                  Button(
                    txt: 'Далее', 
                    page: (context) => FifthPage(), 
                    width: 0.92,
                    height: 0.06, 
                    backgroundColor: Color.fromRGBO(26, 111, 238, 1),
                    colortxt: Colors.white
                  ),
                  SizedBox(height: screenHeight * 0.3,),
                  Column(
                    children: [
                      Text(
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
                        child: Padding(
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