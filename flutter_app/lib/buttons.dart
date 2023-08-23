
import 'package:flutter/material.dart';

class MicIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MicIconButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Icon(
            Icons.mic,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}


class DarkMicIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DarkMicIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 75,
        height: 75,
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
        child: const Center(
          child: Icon(
            Icons.mic,
            color: Colors.white70,
            size: 45,
          ),
        ),
      ),
    );
  }
}

class BlueMicIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const BlueMicIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[800]!, Colors.blue[400]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue[700]!.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
            BoxShadow(
              color: Colors.blue[200]!,
              blurRadius: 10,
              offset: Offset(0, -2),
              spreadRadius: -6.0,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Icon(
            Icons.mic,
            color: Colors.white.withOpacity(0.85),
            size: 45,
          ),
        ),
      ),
    );
  }
}
class OrangeMicIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OrangeMicIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepOrange[800]!, Colors.deepOrange[600]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.deepOrange[700]!.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Icon(
            Icons.mic,
            color: Colors.white.withOpacity(0.9),
            size: 45,
          ),
        ),
      ),
    );
  }
}
