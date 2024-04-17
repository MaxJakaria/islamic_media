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
            image:
                AssetImage('assets/background.jpg'), // Path to your image file
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20.0),
              EmailField(),
              SizedBox(height: 20.0),
              PasswordField(),
              SizedBox(height: 20.0),
              ConfirmPasswordFild(),
              SizedBox(height: 20.0),
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
