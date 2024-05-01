import 'package:flutter/material.dart';
import 'package:islamic_media/FrontEnd/common/email.dart';
import 'package:islamic_media/FrontEnd/common/login_button.dart';
import 'package:islamic_media/FrontEnd/common/password.dart';
import 'package:islamic_media/FrontEnd/common/sign_up_button.dart';
import 'package:islamic_media/FrontEnd/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              const EmailField(),
              const SizedBox(height: 20.0),
              const PasswordField(),
              const SizedBox(height: 20.0),
              LoginButton(
                onPressed: () {
                  // Add your login logic here
                },
              ),
              const SizedBox(height: 30.0), // Add some spacing
              Center(
                  child: Text(
                '___or___',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width *
                      0.04, // Adjust the multiplier as needed
                ),
              )), // "or" text
              const SizedBox(height: 5.0), // Add some spacing
              SignUpButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const SignUpPage()), // Navigate to SignUpPage
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
