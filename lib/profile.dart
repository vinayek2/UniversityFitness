//import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ufit/calendar.dart';
import 'package:ufit/homePage_screen_2.dart';
import 'package:ufit/input_userinfo_screen.dart';
import 'package:ufit/schedule.dart';
import 'package:ufit/user_input.dart';
import 'dart:io';

import 'package:ufit/userdata.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String imageURL = " ";
  String userName = "";
  int currentindex = 0;

  void uploadImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 512,
      maxWidth: 512,
      imageQuality: 80,
    );

    Reference ref = FirebaseStorage.instance.ref().child("profilepic.jpg");
    await ref.putFile(File(image!.path));

    ref.getDownloadURL().then((value) {
      print(value);
      setState(() {
        imageURL = value;
      });
    });
  }

  String docsID = " ";
  Future getDocId() async {
    await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: user!.email)
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              docsID = (document.reference.id);
              print(docsID);
            }));
  }

  User? user = FirebaseAuth.instance.currentUser;
  final firebaseUser = FirebaseAuth.instance.currentUser!.uid;

  int _selectedindex = 0;
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

  // fetch() async {

  //   final firebaseUser = await FirebaseAuth.instance.currentUser;
  //   CollectionReference users = FirebaseFirestore.instance.collection('users');
  //   users.doc(firebaseUser!.uid).get()
  //     await FirebaseFirestore.instance
  //         .collection('users')
  //         .doc(firebaseUser.uid)
  //         .get()
  //         .then((ds) {
  //       userName = ds.data()!['email'];
  //       print("ur mom");

  //     }).catchError((e) {
  //       print("TROLL + $e");
  //     });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        
        child: Column(
          
          children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -25,
                child: Container(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
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
              ),

              Positioned(
                top: 75,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 114, 45),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: imageURL == " "
                          ? Icon(
                              Icons.person,
                              size: 80,
                              color: Colors.white,
                            )
                          : Image.network(imageURL)),
                ),
              ),
              Positioned(
                    top: 185,
                    left: 190,
                    child: GestureDetector(
                      onTap: () {
                        uploadImage();
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 15, 55, 88),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.edit,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
              Column(
                children: [
                  
                  Container(
                    margin: EdgeInsets.only(top: 250),
                    child: FutureBuilder(
                      future: getDocId(),
                      builder: (context, snapshot) {
                        return GetUserName(documentID: docsID);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 0),
                    child: FutureBuilder(
                      future: getDocId(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Getnetid(documentID: docsID);
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),
                  ),
                ],
              ),

              Positioned(
                left: -75,
                top: -100,
                child: Container(
                  width: 175,
                  height: 175,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 15, 55, 88),
                    shape: BoxShape.circle,
                  ),
                ),
              ),

//-- End Ellipse_Container_64 --//
//-- Component Ellipse_Container_65 --//
              Positioned(
                left: -150,
                top: 0,
                child: Container(
                  width: 175,
                  height: 175,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(21, 104, 165, 1),
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              Positioned(
                left: 225,
                top: -100,
                child: Container(
                  width: 175,
                  height: 175,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 15, 55, 88),
                    shape: BoxShape.circle,
                  ),
                ),
              ),

//-- End Ellipse_Container_64 --//
//-- Component Ellipse_Container_65 --//
              Positioned(
                left: 280,
                top: 0,
                child: Container(
                  width: 175,
                  height: 175,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(21, 104, 165, 1),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: 425.0,
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 5,
                ),
              ),

              Positioned(
                top: 430.0,
                child: Container(
                  color: Color.fromARGB(255, 219, 114, 45),
                  width: MediaQuery.of(context).size.width,
                  height: 375,
                ),
              ),

              Positioned(
                  left: 30,
                  top: 620,
                  child: SizedBox(
                    width: 250,
                    height: 150,
                    child: Image.asset(
                        "assets/undrawpilatesgpdb_ImageView_135-287x190.png"),
                  ),
                ),
              
                
                
            ]),
            new Positioned(
                width: 250,
                  top: 500.0,
                  left: MediaQuery.of(context).size.width / 12,
                  child: ElevatedButton(
            
                    style: ElevatedButton.styleFrom(
                      
                      primary: Color.fromARGB(255, 219, 114, 45).withOpacity(.7),
                      //side: BorderSide(color: Colors.white, width: 2.75),
                      textStyle: TextStyle(

                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text('Edit Schedule'),
                    onPressed: () {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            input_page()));
                    },
                  ),
                ),
    //             Scaffold(
    //   body: PageView(
    //     controller: _pageController,
    //     children: screens,
    //     onPageChanged: onPageChanged,
    //     physics: NeverScrollableScrollPhysics(),
    //   ),
    
    //   bottomNavigationBar: BottomNavigationBar(
        
    //     backgroundColor: Color.fromRGBO(21, 104, 165, 1),
    //     //unselectedItemColor: Colors.grey.withOpacity(0.5),
    //     items: [
    //       BottomNavigationBarItem(
    //         label: "Home",
    //         icon: Icon(Icons.home),
    //       ),
    //       BottomNavigationBarItem(
    //         label: "Calendar",
    //         icon: Icon(Icons.calendar_month),
    //       ),
    //       BottomNavigationBarItem(
    //         label: "Schedule",
    //         icon: Icon(Icons.run_circle),
    //       ),
    //     ],
    //     currentIndex: _selectedindex,
    //     selectedItemColor: Colors.white,
    //     onTap: itemTap,
    //   ),
    // ),
        ],),
        
      ),
    );
  }
}
