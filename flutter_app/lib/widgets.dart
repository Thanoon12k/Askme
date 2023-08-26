import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight width;
  final double right;
  const TitleText({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.size = 16.0,
    this.width = FontWeight.w600,
    this.right = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: right),
        Container(
          padding: EdgeInsets.zero,
          child: Text(
            text,
            style: TextStyle(
              fontSize: size,
              fontFamily: "Montserrat",
              color: color,
              fontWeight: width,
            ),
          ),
        ),
      ],
    );
  }
}

class QuestionCircle extends StatelessWidget {
 const QuestionCircle({
  super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      width: 45, // can adjust as per requirement
      height: 45, // can adjust as per requirement
      decoration:const BoxDecoration(
        color: Color.fromARGB(255, 214, 226, 221),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        
        child: Transform.translate(
  offset:const Offset(0, -8),  // Adjust the value as necessary
  child: const Text(
    "؟",
    style: TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 0, 0, 0),
      shadows: <Shadow>[
        Shadow(
          offset: Offset(2.0, 2.0),
          blurRadius: 3.0,
          color: Colors.black38,
        ),
      ],
    ),
  ),
)

      ),
    );
  }
}

class QuestionRectangle extends StatelessWidget {
  final String text;
  final Color  label_color;
   QuestionRectangle({required this.text,this.label_color=Colors.amber, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
          double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth*0.7,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 221, 220, 220),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
           BoxShadow(
            color: Colors.black38,
            blurRadius: 10.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style:const TextStyle(
            fontSize: 16.0,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            
          ),
        ),
      ),
    );
  }
}

class QuestionRow extends StatelessWidget {
  final String questionText;
  const QuestionRow({required this.questionText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
         const SizedBox(width: 10), 
      const  QuestionCircle(),
       const SizedBox(width: 15),  // Gap between circle and rectangle
        QuestionRectangle(text: questionText),
      ],
    );
  }
}


class QuestionArea extends StatelessWidget {
  final TextEditingController question_text_controller;

  const QuestionArea({Key? key, required this.question_text_controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.center,
      child: Container(
        width: screenWidth - 80,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.grey[800]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 15,
              offset: Offset(0, 8),
            ),
            BoxShadow(
              color: Colors.black87,
              blurRadius: 15,
              offset: Offset(0, -2),
              spreadRadius: -12.0,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            child: TextField(
              controller: question_text_controller,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
              cursorColor: Colors.white70,
              maxLines: 8, // This allows multiple lines
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                border: InputBorder.none,
                hintText: "Enter your question or use Microphone",
                hintStyle: TextStyle(color: Colors.white38),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class AnswerArea extends StatelessWidget {
  final String answer;

  const AnswerArea({Key? key, required this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.center,
      child: Container(
        width: screenWidth - 20,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 39, 37, 37), Colors.grey[800]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(115, 97, 84, 84),
              blurRadius: 15,
              offset: Offset(0, 8),
            ),
            BoxShadow(
              color: Colors.black87,
              blurRadius: 15,
              offset: Offset(0, -2),
              spreadRadius: -12.0,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Scrollbar(
         
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
               answer,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                ),
              
              ),
            ),
          ),
        ),
      ),
    );
  }
}
