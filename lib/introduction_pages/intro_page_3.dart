import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          Text(
              "Book Sports Facilities \nwith Ease",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25,fontFamily:'Sakana'),
            ),
            Text(
              "Secure your practice or game time in seconds.",
              textAlign: TextAlign.center,
              style: GoogleFonts.sofiaSansCondensed(
              fontSize: 20,
              fontStyle: FontStyle.italic
            ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.55,
             
            ),
            Text(
              "Search and book the best sports venues in your \narea. No more last-minute hassles—just focus \non playing your best game.",
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
