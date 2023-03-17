import 'package:flutter/material.dart';
import 'package:ufit/registrationScreen_screen_3.dart';
import '../../ui/export.dart';

class welcomePage_screen_1 extends StatefulWidget {
  const welcomePage_screen_1({Key? key}) : super(key: key);

  @override
  _welcomePage_screen_1State createState() => _welcomePage_screen_1State();
}

class _welcomePage_screen_1State extends State<welcomePage_screen_1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double widthScale = width / 375;
    double heightScale = height / 812;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 114, 45),
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(children: [
                const SizedBox(height: 830, width: 400),
//-- Component cornerShape_Container_8 --//
                Positioned(
                  left: -70,
                  top: -30,
                  child: Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 15, 55, 88),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
//-- Component Ellipse_Container_62 --//
                          Positioned(
                            left: 60,
                            top: -60,
                            child: Container(
                              width: 175,
                              height: 175,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(21, 104, 165, 1),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),

//-- End Ellipse_Container_63 --//
                        ]),
                  ),
                ),

//-- End cornerShape_Container_8 --//
//-- Component undrawbasketballrefsbx_ImageView_11 --//
                Positioned(
                  left: 12,
                  top: 579,
                  child: SizedBox(
                    width: 150,
                    height: 207,
                    child: Image.asset(
                        "assets/undrawbasketballrefsbx_ImageView_11-150x207.png"),
                  ),
                ),
                Positioned(
                  left: 230,
                  top: 740,
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
                  left: 290,
                  top: 700,
                  child: Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(21, 104, 165, 1),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

//-- End Ellipse_Container_13 --//
//-- Component undrawyogareild_ImageView_14 --//
                Positioned(
                  left: 115,
                  top: 221,
                  child: SizedBox(
                    width: 149,
                    height: 273,
                    child: Image.asset(
                        "assets/undrawyogareild_ImageView_14-149x273.png"),
                  ),
                ),
//-- End undrawyogareild_ImageView_14 --//
//-- Component TopPageComponents_Container_15 --//
                Positioned(
                  left: 18,
                  top: 9,
                  child: Container(
                    width: 345,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
//-- Component signal_ImageView_16 --//
                          Positioned(
                            left: 260,
                            top: 0,
                            child: SizedBox(
                              width: 25 * widthScale,
                              height: 25 * heightScale,
                              // child: Image.asset(
                              //     "assets/signal_ImageView_16-25x25.png"),
                            ),
                          ),
//-- End signal_ImageView_16 --//
//-- Component wifi_ImageView_17 --//
                          Positioned(
                            left: 289,
                            top: 0,
                            child: SizedBox(
                              width: 25 * widthScale,
                              height: 25 * heightScale,
                              // child: Image.asset(
                              //     "assets/wifi_ImageView_17-25x25.png"),
                            ),
                          ),
//-- End wifi_ImageView_17 --//
//-- Component batteryfull_ImageView_18 --//
                          Positioned(
                            left: 320,
                            top: 0,
                            child: SizedBox(
                              width: 25 * widthScale,
                              height: 25 * heightScale,
                              // child: Image.asset(
                              //     "assets/batteryfull_ImageView_18-25x25.png"),
                            ),
                          ),
//-- End batteryfull_ImageView_18 --//
//-- Component _TextView_19 --//

//-- End _TextView_19 --//
                        ]),
                  ),
                ),

//-- End TopPageComponents_Container_15 --//
//-- Component UIUCStudentFitnessSchedulingApp_TextView_20 --//
                const Positioned(
                    left: 20,
                    top: 167,
                    child: Text(
                      "UIUC Student Fitness Scheduling App ",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          wordSpacing: 1.0),
                    )),
//-- End UIUCStudentFitnessSchedulingApp_TextView_20 --//
//-- Component Welcome_TextView_21 --//
                const Positioned(
                    left: 80,
                    top: 101,
                    child: Text(
                      "Welcome!",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          wordSpacing: 2.0),
                    )),
//-- End Welcome_TextView_21 --//
//-- Component ButtonNext_Button_22 --//
                Positioned(
                    left: 66,
                    top: 520,
                    child: SizedBox(
                        width: 245,
                        height: 40,
                        child: TextButton(
                          child: const Text('Let’s Get Started!',
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              )),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color.fromRGBO(21, 104, 165, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                              side: const BorderSide(
                                width: 0,
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        registrationScreen_screen_3()));
                          },
                        ))),
//-- End ButtonNext_Button_22 --//
              ]),
            ),
//-- Component ScrollContainer --//
//-- End ScrollContainer --//
          ],
        ),
      ),
    );
  }
}
