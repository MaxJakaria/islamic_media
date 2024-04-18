import 'package:flutter/material.dart';

class ConfirmPasswordFild extends StatefulWidget {
  const ConfirmPasswordFild({super.key});

  @override
  State<ConfirmPasswordFild> createState() => _ConfirmPasswordFildState();
}

class _ConfirmPasswordFildState extends State<ConfirmPasswordFild> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        labelText: 'Confirm password',
        prefixIcon: const Icon(Icons.lock_open),
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
    );
  }
}
