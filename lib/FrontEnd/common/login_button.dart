import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 210, 233, 4), // Background color
        textStyle: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.04,
        ), // Text style
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6), // Button border radius
        ),
      ),
      child: const Text(
        'Login',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
