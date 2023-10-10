import 'package:flutter/material.dart';
import 'package:my/widget/button.dart';
import 'package:my/pages/virif_email_page.dart';
class InputWithButton extends StatefulWidget {
  @override
  _InputWithButtonState createState() => _InputWithButtonState();
}
class _InputWithButtonState extends State<InputWithButton> {

  TextEditingController _textController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _textController.addListener(_onTextChanged); // Прослушиваем изменения текста
  }

  void _onTextChanged() {
    setState(() {
      // Проверяем, содержит ли поле ввода текст
      _isButtonEnabled = _textController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
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
                          controller: _textController,
                          decoration: InputDecoration(
                            
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: 'example@mail.ru',
                            hintStyle: const TextStyle(
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
                      SizedBox(height: screenHeight * 0.02,),
                      ElevatedButton(
                            onPressed: _isButtonEnabled ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FifthPage(), 
                                ),
                              );
                              }
                              : null,
                            child: Text('Далее'), // Текст на кнопке
                                style:  ElevatedButton.styleFrom(
                                minimumSize: Size(screenWidth * 0.92, screenHeight * 0.06),
                                backgroundColor: _isButtonEnabled ? Color.fromRGBO(26, 111, 238, 1) : Color.fromRGBO(105, 165, 255, 1) ,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                            ),
                      ),
                    ],
                  );
  }

  @override
  void dispose() {
    _textController.dispose(); // Не забудьте освободить контроллер текста
    super.dispose();
  }
}

