import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        backgroundColor: Color.fromARGB(255, 210, 233, 4), // Background color
        textStyle: TextStyle(fontSize: 18), // Text style
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Button border radius
        ),
      ),
      child: Text(
        'Login',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
