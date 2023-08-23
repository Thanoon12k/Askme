import 'package:flutter/material.dart';

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
  const QuestionRectangle({required this.text, Key? key}) : super(key: key);

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
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                color: Color.fromARGB(96, 207, 194, 194),
              ),
            ],
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
