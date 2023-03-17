import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:ufit/profile.dart';
import 'package:ufit/schedule.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});
  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  dynamic f = DateFormat.yM().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*
      appBar: AppBar(
        title: Text("Hello"),
      ),
      */
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Color.fromARGB(255, 219, 114, 45),
                shape: BoxShape.circle,
              ),
              weekendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              defaultTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              todayTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              formatButtonShowsNext: false,
              leftChevronVisible: false,
              rightChevronVisible: false,
              headerPadding: EdgeInsets.symmetric(vertical: 35.0),
              headerMargin: EdgeInsets.only(bottom: 20.0),
              titleTextFormatter: (date, locale) =>
                  DateFormat.MMMM(locale).format(date),
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white,
              ),
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
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 219, 114, 45),
                fontSize: 17,
                height: .95,
              ),
              weekendStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 219, 114, 45),
                fontSize: 17,
                height: .95,
              ),
            ),
          ),
        ),
        
        Container(
          color: Color.fromARGB(255, 15, 55, 88),
          height: 10,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          
            width: MediaQuery.of(context).size.width,
            height: 350,
            color: Color.fromARGB(255, 241, 239, 239),
            child: new Stack(
              children: [
                new Container(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 3.75,
                    top: 10,
                  ),
                  child: Text(
                    style: TextStyle(
                      color: Color.fromARGB(255, 15, 55, 88),
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                    //shows the date
                    DateFormat.EEEE().format(DateTime.now()) +
                        " " +
                        DateFormat.Md().format(DateTime.now()),
                  ),
                ),
                new Positioned(
                  top: 300.0,
                  child: Container(
                    color: Color.fromARGB(255, 219, 114, 45),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                  ),
                ),
                new Positioned(
                  top: 275.0,
                  left: MediaQuery.of(context).size.width / 7.5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 15, 55, 88),
                      //side: BorderSide(color: Colors.white, width: 2.75),
                      textStyle: TextStyle(

                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text('View Detailed Schedule'),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Schedule()));
                    },
                  ),
                ),
              ],
            )),
      
      ],
    )
        
      ),);
  }
}

