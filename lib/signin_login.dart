import 'package:flutter/material.dart';
import 'package:spartan_app/signup-login/login.dart';
import 'package:spartan_app/signup-login/signup.dart';

class SigninLogin extends StatefulWidget {
  SigninLogin({super.key});

  @override
  State<SigninLogin> createState() => _SigninLoginState();
}

class _SigninLoginState extends State<SigninLogin> {
  Widget? activeState;

  @override
  void initState() {
    super.initState();
    activeState = loginpage(onClickSignin);
  }

  void onClickSignin() {
    setState(() {
      activeState = Signup(onClicklogin);
    });
  }

  void onClicklogin() {
    setState(() {
      activeState = loginpage(onClickSignin);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: activeState,
        ),
      ),
    );
  }
}
