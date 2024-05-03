import 'package:flutter/material.dart';
import 'package:islamic_media/Firebase%20auth/firebase_authentication.dart';
import 'package:islamic_media/FrontEnd/common/email.dart';
import 'package:islamic_media/FrontEnd/common/login_button.dart';
import 'package:islamic_media/FrontEnd/common/sign_up_button.dart';
import 'package:islamic_media/FrontEnd/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  TextFildDecoration textFildDecoration = TextFildDecoration();
  FirebaseAuthentication firebaseAuthentication = FirebaseAuthentication();
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
              TextField(
                controller: _emailController,
                decoration: textFildDecoration.creatTextFildDecoration(
                    "Emali", const Icon(Icons.email)),
              ),
              const SizedBox(height: 20.0),
              TextField(
                obscureText: !_passwordVisible,
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.key),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),),
              ),
              const SizedBox(height: 20.0),
              LoginButton(
                onPressed: () {
                  // Add your login logic here
                  firebaseAuthentication.signupUser(
                      _emailController.text, _passwordController.text, context);
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
