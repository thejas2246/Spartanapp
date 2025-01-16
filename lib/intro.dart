import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spartan_app/introduction_pages/intro_page_1.dart';
import 'package:spartan_app/introduction_pages/intro_page_2.dart';
import 'package:spartan_app/introduction_pages/intro_page_3.dart';
import 'package:spartan_app/introduction_pages/intro_page_4.dart';
import 'package:spartan_app/signin_login.dart';

PageController _controller = PageController();

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  bool onlastpage = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                onlastpage = (value == 3);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
              IntroPage4(),
            ]),
        Container(
          alignment: Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SkipButton(),
              SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ExpandingDotsEffect(
                  spacing: 8.0,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.black,
                  radius: 10,
                  dotWidth: 9,
                  dotHeight: 7,
                ),
              ),
              NextButton(onlastpage),
            ],
          ),
        )
      ],
    );
  }
}

//Skip button

class SkipButton extends StatelessWidget {
  SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        _controller.jumpToPage(3);
      },
      child: Text(
        'Skip',
        style: TextStyle(color: Colors.black, fontFamily: 'Sakana'),
      ),
      style: OutlinedButton.styleFrom(
          side: BorderSide(width: 1.5, color: Colors.black),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}

//Next button

class NextButton extends StatelessWidget {
  const NextButton(this.lastpage, {super.key});
  final bool lastpage;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        if (!lastpage) {
          _controller.nextPage(
              duration: Duration(milliseconds: 300), curve: Curves.easeIn);
        }
        else{
          Navigator.push(context,MaterialPageRoute(builder: (context)=>SigninLogin()));
        }
      },
      child: lastpage
          ? Text(
              'Done',
              style: TextStyle(
                  fontFamily: 'Sakana',
                  color: const Color.fromARGB(255, 255, 255, 255)),
            )
          : Text(
              'Next',
              style: TextStyle(
                  fontFamily: 'Sakana',
                  color: const Color.fromARGB(255, 255, 255, 255)),
            ),
      style: OutlinedButton.styleFrom(
          backgroundColor: Colors.black,
          side: BorderSide(width: 1.5, color: Colors.black),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
