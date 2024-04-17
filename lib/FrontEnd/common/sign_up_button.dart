import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SignUpButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        backgroundColor: Color.fromARGB(255, 210, 233, 4), // Background color
        textStyle: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.04,
        ), // Text style
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6), // Button border radius
        ),
      ),
      child: Text(
        'Sign-Up',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
