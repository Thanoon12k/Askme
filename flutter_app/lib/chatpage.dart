import 'package:flutter/material.dart';
import 'package:flutter_app/buttons.dart';
import 'package:flutter_app/widgets.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: screenWidth,
            height: screenHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/chat_background.PNG"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Questions Column
          Padding(
            padding:const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: screenHeight * 0.2),
                const QuestionRow(
                    questionText: "اقترح لي هدية مناسبة لعيد ميلاد امي ؟"),
                const SizedBox(height: 15),
                const QuestionRow(
                    questionText: "طريقة اعداد البقلاوة العراقية ؟"),
                const SizedBox(height: 15),
                const QuestionRow(
                    questionText: "اكتب لي معادلة ايجاد قطر الدائرة ؟"),
               
               
              ],
            ),
          ),
        Positioned(
                  bottom: 20,
                  left: (screenWidth - 70) / 2,  // assuming the width of MicIconButton is 70, adjust as needed
                  child: DarkMicIconButton(
                    onPressed: () {},
                  ),
                ) ],
      ),
    );
  }
}
