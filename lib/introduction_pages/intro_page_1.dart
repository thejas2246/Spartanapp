import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                fontSize: 20,
                fontFamily: 'Sakana',
              ),
            ),
            Text(
              "Connect Complete Achieve",
              style: GoogleFonts.sofiaSansCondensed(
                  fontSize: 20, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.59,
            ),
            Text(
              "Connect with players, form teams, and \nunlock the joy of competition.",
              textAlign: TextAlign.center,
              style: GoogleFonts.sofiaSansCondensed(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
