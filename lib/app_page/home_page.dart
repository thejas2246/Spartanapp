import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
                    SizedBox(
                      height: 10,
                    ),
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
                          customOutlineButton('assets/images/sword.png','Create Team',10),
                          customOutlineButton('assets/images/team.png','Join Team',10),
                          customOutlineButton('assets/images/edit.png','Find Opponent',10)
                        ])
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey
                  )
                ),
                width: MediaQuery.sizeOf(context).width/1.1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text("Events and Games near me",style: TextStyle(
                      fontFamily: fontfam,
                      fontSize: 14
                     ),),
                      Expanded(
                        child: Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              matchesNearMe(),
                              matchesNearMe(),
                              matchesNearMe(),
                              matchesNearMe(),
                              matchesNearMe(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),SizedBox(
                height: 10,
              ),
          Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey
              )
            ),
            
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customOutlineButton('assets/images/sword.png','Create Team',40),
                          customOutlineButton('assets/images/team.png','Join Team',40),
                          customOutlineButton('assets/images/edit.png','Find Opponent',40),
                          customOutlineButton('assets/images/sword.png','Create Team',40),
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
  const customOutlineButton(this.icon,this.icontext,this.buttonRadius,{super.key});
  
  final double buttonRadius;
  final String icon;
  final String icontext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          child: OutlinedButton(
            style:OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonRadius)
              )
            ),
            onPressed: () {},
            child: ImageIcon(AssetImage(icon),size:40,color: Colors.black,),
          ),
        ),
        Text(icontext)
      ],
    );
  }
}

class matchesNearMe extends StatelessWidget {
  const matchesNearMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 211, 211, 211),
              ),

              width: 100,
              child: Icon(Icons.image),
            ),
          ),
        ),
        Text('Fit India'),
      ],
    );
  }
}