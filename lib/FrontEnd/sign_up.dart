import 'package:flutter/material.dart';
import 'package:islamic_media/Firebase%20auth/firebase_authentication.dart';
import 'package:islamic_media/FrontEnd/common/email.dart'; // Import EmailField
import 'package:islamic_media/FrontEnd/common/sign_up_button.dart'; // Import PasswordField

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPassword = TextEditingController();
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
                  controller: _nameController,
                  decoration: textFildDecoration.creatTextFildDecoration(
                      "Name", const Icon(Icons.person))),
              const SizedBox(height: 20.0),
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
              TextField(
                controller: _confirmPassword,
                decoration: InputDecoration(
                    labelText: "Confirm Password", prefixIcon: Icon(Icons.key),
                suffixIcon: IconButton(
                  icon: Icon(_confirmPasswordVisible ? Icons.visibility : Icons.visibility_off),
                  onPressed: (){
                    setState(() {
                     _confirmPasswordVisible = !_confirmPasswordVisible;
                    });
                  },
                ),),
              ),
              const SizedBox(height: 20.0),
              SignUpButton(
                onPressed: () {
                  // Add your sign-up logic here
                  firebaseAuthentication.creatUser(_emailController.text,
                      _passwordController.text, _confirmPassword.text, context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
