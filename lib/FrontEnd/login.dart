import 'package:flutter/material.dart';
import 'package:islamic_media/FrontEnd/common/email.dart';
import 'package:islamic_media/FrontEnd/common/login_button.dart';
import 'package:islamic_media/FrontEnd/common/password.dart';
import 'package:islamic_media/FrontEnd/common/sign_up_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'IslamicMedia',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              EmailField(),
              SizedBox(height: 20.0),
              PasswordField(),
              SizedBox(height: 20.0),
              LoginButton(
                onPressed: () {
                  // Add your login logic here
                },
              ),
              SizedBox(height: 30.0), // Add some spacing
              Center(
                  child: Text(
                'or',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width *
                      0.04, // Adjust the multiplier as needed
                ),
              )), // "or" text
              SizedBox(height: 5.0), // Add some spacing
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
