import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage4 extends StatelessWidget {
  const IntroPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: Column(
          children: [
            Text(
              "Compete and Rise Through \nthe Ranks",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontFamily: 'Sakana'),
            ),
            Text(
              "Track your per formance and celebrate your wins.",
              textAlign: TextAlign.center,
              style: GoogleFonts.sofiaSansCondensed(
                  fontSize: 20, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.55,
            ),
            Text(
              "Showcase your skills, climb leaderboards, and \n earn achievements. Spartan makes every match \ncount toward your journey to greatness",
              textAlign: TextAlign.center,
              style: GoogleFonts.sofiaSansCondensed(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
