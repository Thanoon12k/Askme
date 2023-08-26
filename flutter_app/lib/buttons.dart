
import 'package:flutter/material.dart';

class DarkMicIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DarkMicIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center, // Ensure the child widget remains centered.
      child: Container(
        width: 50,
        height: 50,
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
        child: GestureDetector(
          onTap: onPressed,
          child: const Center(
            child: Icon(
              Icons.mic,
              color: Colors.white70,
              size: 31,
            ),
          ),
        ),
      ),
    );
  }
}


class RecordIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RecordIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center, // Ensure the child widget remains centered.
      child: Container(
        width: 50,
        height: 50,
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
        child: GestureDetector(
          onTap: onPressed,
          child: const Center(
            child: Icon(
              Icons.mic,
              color: Color.fromARGB(255, 255, 0, 0),
              size: 31,
            ),
          ),
        ),
      ),
    );
  }
}
class SendIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SendIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center, // Ensure the child widget remains centered.
      child: Container(
        width: 50,
        height: 50,
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
        child: GestureDetector(
          onTap: onPressed,
          child: const Center(
            child: Icon(
              Icons.send,
              color: Colors.grey,
              size: 31,
            ),
          ),
        ),
      ),
    );
  }
}


class NotConnectedButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NotConnectedButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center, // Ensure the child widget remains centered.
      child: GestureDetector(
          onTap: onPressed,
          child: const Center(
            child: Icon(
              Icons.signal_wifi_connected_no_internet_4,
              color: Color.fromARGB(255, 77, 65, 65),
              size: 65,
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
              offset: const Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Icon(
            Icons.mic,
            color: Colors.white.withOpacity(0.9),
            size: 31,
          ),
        ),
      ),
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
            offset: const Offset(0, 5),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ), // Shadow settings
        ],
        gradient: const LinearGradient(
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
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ), // Match the borderRadius with the BoxDecoration
        ),
        child: Text(
          text,
          style: const TextStyle(fontFamily: "Montasserate", fontSize: 24),
        ),
      ),
    );
  }
}



class DarkStyledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const DarkStyledButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            offset: const Offset(0, 5),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ), // Shadow settings for dark theme (slight white shadow)
        ],
        gradient: const LinearGradient(
          colors: [Colors.grey, Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ), // Dark Gradient color
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent, // Button background color
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ), // Match the borderRadius with the BoxDecoration
        ),
        child: Text(
          text,
          style: const TextStyle(fontFamily: "Montasserate", fontSize: 24, color: Colors.white), // Text color for dark theme
        ),
      ),
    );
  }
}


class GradientStyledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const GradientStyledButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 5),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          ),
        ],
        gradient: const LinearGradient(
          colors: [Color(0xFF808AA3), Color(0xFF0A378F)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontFamily: "Montasserate", fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}


class TealMicIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  const TealMicIconButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF4B2E6F), Color(0xFF24B9C0)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF0D2C2D).withOpacity(0.5),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Icon(
            Icons.mic,
            color: Colors.white.withOpacity(0.9),
            size: 31,
          ),
        ),
      ),
    );
  }
}

class AwesomeButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const AwesomeButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}