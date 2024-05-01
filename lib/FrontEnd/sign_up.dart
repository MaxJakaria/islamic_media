import 'package:flutter/material.dart';
import 'package:islamic_media/FrontEnd/common/confirm_password.dart';
import 'package:islamic_media/FrontEnd/common/email.dart'; // Import EmailField
import 'package:islamic_media/FrontEnd/common/password.dart';
import 'package:islamic_media/FrontEnd/common/sign_up_button.dart'; // Import PasswordField

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Islamic Media',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/background.jpg'), // Path to your image file
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 20.0),
              const EmailField(),
              const SizedBox(height: 20.0),
              const PasswordField(),
              const SizedBox(height: 20.0),
              const ConfirmPasswordFild(),
              const SizedBox(height: 20.0),
              SignUpButton(
                onPressed: () {
                  // Add your sign-up logic here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
