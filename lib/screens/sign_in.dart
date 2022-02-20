// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences_flutter_demo/screens/home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
            child: ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.cyan[200],
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
      icon: Image.asset(
        "images/google.png",
        height: 15,
        width: 15,
      ),
      label: const Text(
        "Login with Google",
        style: TextStyle(color: Colors.black),
      ),
    )));
  }
}
