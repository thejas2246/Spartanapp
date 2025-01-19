import 'package:flutter/material.dart';
import 'package:spartan_app/intro.dart';

void main(){
  runApp(SpartanApp());
}

class SpartanApp extends StatelessWidget {
   const SpartanApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Intro(),
      ),
    );
  }
}
//testing