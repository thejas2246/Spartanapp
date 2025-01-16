import 'package:flutter/material.dart';
import 'package:spartan_app/app_page/date-pick.dart';
import 'package:spartan_app/app_page/home-page-appbar.dart';
import 'package:spartan_app/signup-login/signup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: HomeAppBar(),
        body: Container(
          child: Column(
            children: [
              Date_pick(),
              Container(
                width: MediaQuery.sizeOf(context).width / 1.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ready To Play?',
                      style: TextStyle(
                        fontFamily: fontfam,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customOutlineButton('assets/images/sword.png','Create Team'),
                          customOutlineButton('assets/images/team.png','Join Team'),
                          customOutlineButton('assets/images/edit.png','Find Opponent')
                        ])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class customOutlineButton extends StatelessWidget {
  const customOutlineButton(this.icon,this.icontext,{super.key});
  
  final String icon;
  final String icontext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          style:OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 20),
            child: ImageIcon(AssetImage(icon),color: Colors.black,),
          ),
        ),
        Text(icontext)
      ],
    );
  }
}
