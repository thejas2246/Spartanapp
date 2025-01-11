import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: Column(
          children: [
            Text(
              "Welcome to Sparta",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text("Connect Complete Achieve"),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.6,
            ),
            Text(
              "Connect with players, form teams, and \nunlock the joy of competition.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
