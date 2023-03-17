import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
          height: 80,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(21, 104, 165, 1),
                  Color.fromARGB(255, 15, 55, 88)
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 0.72),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        Positioned(
                    top: 15,
                    left: 10,
                    child: GestureDetector(
                      onTap: () {
                       Navigator.pop(context);
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
        
        
        SingleChildScrollView(
          child: Container(
          height: MediaQuery.of(context).size.height / 1.2,
          child: SfCalendar(
            view: CalendarView.day,
            showCurrentTimeIndicator: true,
            headerDateFormat: 'MMMM d, y',
            headerStyle: CalendarHeaderStyle(
              textStyle: TextStyle(
                color: Color.fromRGBO(21, 104, 165, 1),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            timeSlotViewSettings: TimeSlotViewSettings(
              timeIntervalHeight: 100,
              timeTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color.fromRGBO(21, 104, 165, 1),
              )
            ),
            todayHighlightColor: Color.fromARGB(255, 219, 114, 45),
          ),
        ),
        ),
        
        
      ],
    ));
  }
}
