import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: Column(
          children: [
            Text(
              "Discover Local Sports \n Communities",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontFamily: 'Sakana'),
            ),
            Text(
              "Join games or organize your own events.",
              textAlign: TextAlign.center,
              style: GoogleFonts.sofiaSansCondensed(
                  fontSize: 20, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.55,
            ),
            Text(
              "Find games, tournaments, and teammates to stay \nactive and grow in your sports community",
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
