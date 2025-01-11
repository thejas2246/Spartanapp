import 'package:flutter/material.dart';

class IntroPage4 extends StatelessWidget {
  const IntroPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0,100,0,0),
        child: Column(
          children: [
            Text.rich(
                textAlign: TextAlign.center,
                TextSpan(children: [
                  TextSpan(
                    text: "Compete and Rise Through",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  TextSpan(
                    text: "\n    the Ranks",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ])),
            Text(
              "Track your per formance and celebrate your wins.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.55,
              
            ),
            Text(
              "Showcase your skills, climb leaderboards, and \n earn achievements. Spartan makes every match \ncount toward your journey to greatness",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
