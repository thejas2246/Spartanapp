import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0,100,0,0),
        child: Column(
          children: [
            Container(
              width: 300,
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(children: [
                  TextSpan(
                    text: "Discover Local Sports ",
                      style: TextStyle(
                        fontSize: 30,
                        
                      ),
                  ),
                  TextSpan(
                    text: "\n    Communities ",
                      style: TextStyle(
                        fontSize: 30,
                        
                      ),
                  ),
                ])
              )
            ),
            Text("Join games or organize your own events.",textAlign: TextAlign.center,style: TextStyle(
              fontSize: 15
            ),),
            SizedBox(
             height: MediaQuery.sizeOf(context).height * 0.55,
              ),
            Text(
              "Find games, tournaments, and teammates to stay \nactive and grow in your sports community",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}