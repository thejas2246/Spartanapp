import 'package:flutter/material.dart';

AppBar HomeAppBar(){
return AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(preferredSize: Size.fromHeight(1.0), 
          child:Container(
            height: 1.2,
            color: Colors.grey,
          )),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 15,),
                  Text('Location'),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              Row(
                
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 20,),
                  Icon(Icons.access_alarm),
                  SizedBox(width: 20,),
                   Icon(Icons.access_alarm)
                ],
              )
            ],
          ),
        );

}