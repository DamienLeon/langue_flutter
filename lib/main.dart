import 'package:flutter/material.dart';
import 'package:langue_flutter/view/auth/phone_verification_screen.dart';
import 'package:langue_flutter/view/auth/sign_in_screen.dart';
import 'package:langue_flutter/view/auth/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xFF191F28)),
      home: const SignUpScreen(),
    );
  }
}
