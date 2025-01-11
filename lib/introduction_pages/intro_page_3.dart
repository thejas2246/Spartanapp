import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

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
                    text: "Book Sports Facilities ",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  TextSpan(
                    text: "\n    with Ease",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ])),
            Text(
              "Secure your practice or game time in seconds.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.55,
             
            ),
            Text(
              "Search and book the best sports venues in your \narea. No more last-minute hassles—just focus \non playing your best game.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
