import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  
  final String text;
  final Color color;
  final double size;
  final FontWeight width;
 final double right;
  const TitleText({super.key, 
    required this.text,
    this.color = Colors.white,
    this.size = 16.0,
    this.width = FontWeight.w600,
  
    this.right=0,
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

class StyledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const StyledButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset:const Offset(0, 5),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ), // Shadow settings
        ],
        gradient:const LinearGradient(
          colors: [Colors.blueAccent, Colors.purpleAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ), // Gradient color
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding:const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ), // Match the borderRadius with the BoxDecoration
        ),
        child: Text(text,style:const TextStyle(fontFamily: "Montasserate",fontSize: 24),),
      ),
    );
  }
}
