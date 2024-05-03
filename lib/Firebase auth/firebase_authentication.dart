import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:islamic_media/API/api.dart';
import 'package:islamic_media/widgets/chat_user_card.dart';

class FirebaseAuthentication {
  Future<void> creatUser(String email, String password, String confirmPassword,
      BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      Navigator.pop(context);
      SignUpAlertDialog.signUpErrorDialog(
          context, "Please give all informition!!");
    } else if (password != confirmPassword) {
      Navigator.pop(context);
      SignUpAlertDialog.signUpErrorDialog(
          context, 'Password and Cnofirm password are not match!!');
    } else {
      try {
        UserCredential? userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        SignUpAlertDialog.signUpErrorDialog(context, e.code);
      }
    }
  }

  Future<void> signupUser(
      String email, String password, BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    if (email.isEmpty || password.isEmpty) {
      Navigator.pop(context);
      SignUpAlertDialog.signUpErrorDialog(
          context, "Please give all informition!!");
    } else {
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        debugPrint('login user success!!');
        Navigator.pop(context);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Scaffold(
                body: StreamBuilder(

                  stream: APIs.firestore.collection('User').snapshots(),
                  builder: (context, snapshot) {
                    return ListView.builder(
                      itemCount: 16,
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.01),
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, Index) {
                        return const ChatUserCard();
                      },
                    );
                  }
                ),
              );
            },
          ),
        );
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        SignUpAlertDialog.signUpErrorDialog(context, e.code);
      }
    }
  }
}

class SignUpAlertDialog {
  // static UserAuth? userAuth;
  static late Future<bool> isUserCreat;
  static Future<void> signUpErrorDialog(
      BuildContext context, String message) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Got it'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
