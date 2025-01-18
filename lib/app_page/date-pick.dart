import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class Date_pick extends StatelessWidget {
  const Date_pick({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border:Border.all(
          color: Colors.grey
        )
      ),
      padding:EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
      child: DatePicker(
        DateTime.now(),
        height: 90,
        width: 53,
        initialSelectedDate: DateTime.now(),
        selectionColor: Colors.black,
      ),
    );
  }
}
