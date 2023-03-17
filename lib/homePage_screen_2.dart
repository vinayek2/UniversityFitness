import 'package:flutter/material.dart';
import 'package:ufit/calendar.dart';
import 'package:ufit/profile.dart';
import 'package:ufit/schedule.dart';

class homePage_screen_2 extends StatefulWidget {
  final int recordObject;

  const homePage_screen_2({Key? key, required this.recordObject}) : super(key: key);


  @override
  _homePage_screen_2State createState() => _homePage_screen_2State();
}

class _homePage_screen_2State extends State<homePage_screen_2> {
  late int _selectedindex;
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _selectedindex = widget.recordObject;
    });
    super.initState();
  }

  

  PageController _pageController = PageController();

  List<Widget> screens = [Profile(), Calender(), Schedule()];
  @override
  void onPageChanged(int index) {}

  void itemTap(int index) {
    _pageController.jumpToPage(index);
    setState(() {
       _selectedindex = index;
    });
   
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: screens,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
    
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: Color.fromRGBO(21, 104, 165, 1),
        //unselectedItemColor: Colors.grey.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Calendar",
            icon: Icon(Icons.calendar_month),
          ),
          BottomNavigationBarItem(
            label: "Schedule",
            icon: Icon(Icons.run_circle),
          ),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.white,
        onTap: itemTap,
      ),
    );
  }
}
