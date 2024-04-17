import 'package:flutter/material.dart';
import 'package:islamic_media/FrontEnd/common/email.dart';
import 'package:islamic_media/FrontEnd/common/login_button.dart';
import 'package:islamic_media/FrontEnd/common/password.dart';

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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
