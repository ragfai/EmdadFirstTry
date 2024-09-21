import 'package:flutter/material.dart';
import 'package:untitled1/StartPages/Loginpage.dart';
import 'package:untitled1/StartPages/resetpassword.dart';
import 'package:untitled1/StartPages/signup.dart';
import 'package:untitled1/StartPages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const welcome(),
        "/login": (context) => LoginPage(),
        "/signup": (context) => const Signuppage(),
        "/rsetpassword": (context) => PasswordResetPage(),
      },
    );
  }
}
