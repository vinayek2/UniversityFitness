import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ufit/homePage_screen_2.dart';
import 'package:ufit/profile.dart';
import 'package:ufit/registrationScreen_screen_3.dart';
import 'package:ufit/ui/reusable_widgets.dart';
import '../../ui/export.dart';
// import 'package:url_launcher/url_launcher.dart';

class signInScreen_screen_4 extends StatefulWidget {
  const signInScreen_screen_4({Key? key}) : super(key: key);

  @override
  _signInScreen_screen_4State createState() => _signInScreen_screen_4State();
}

class _signInScreen_screen_4State extends State<signInScreen_screen_4> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  bool _isVisible = false;
  String text = "not set";
  double num = 90.0;
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
                child: Stack(
                  children: [
                    const SizedBox(height: 830, width: 400),
//-- Component cornerShape_Container_84 --//
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

//-- End Ellipse_Container_88 --//
//-- Component Rectangle_Button_89 --//
                    // Positioned(
                    //     child: SizedBox(
                    //         width: 325 * widthScale,
                    //         height: 50 * heightScale,
                    //         child: TextButton(
                    //           child: const Text("",
                    //               overflow: TextOverflow.visible,
                    //               style: TextStyle(
                    //                 color: Color.fromRGBO(0, 0, 0, 1),
                    //               )),
                    //           style: TextButton.styleFrom(
                    //             padding: EdgeInsets.zero,
                    //             backgroundColor: Colors.white,
                    //             shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(0),
                    //               side: const BorderSide(
                    //                 width: 0,
                    //                 color: Colors.transparent,
                    //               ),
                    //             ),
                    //           ),
                    //           onPressed: () {},
                    //         ))),
//-- End Rectangle_Button_89 --//
//-- Component TopPageComponents_Container_90 --//
                    Positioned(
                      left: 18,
                      top: 9,
                      child: Container(
                        width: 345,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                        ),
//                         child: Stack(
//                             alignment: Alignment.center,
//                             clipBehavior: Clip.none,
//                             children: [
// //-- Component signal_ImageView_91 --//
//                               Positioned(
//                                 left: 260,
//                                 top: 0,
//                                 child: SizedBox(
//                                   width: 25 * widthScale,
//                                   height: 25 * heightScale,
//                                   child: Image.asset(
//                                       "assets/signal_ImageView_91-25x25.png"),
//                                 ),
//                               ),
// //-- End signal_ImageView_91 --//
// //-- Component wifi_ImageView_92 --//
//                               Positioned(
//                                 left: 289,
//                                 top: 0,
//                                 child: SizedBox(
//                                   width: 25 * widthScale,
//                                   height: 25 * heightScale,
//                                   child: Image.asset(
//                                       "assets/wifi_ImageView_92-25x25.png"),
//                                 ),
//                               ),
// //-- End wifi_ImageView_92 --//
// //-- Component batteryfull_ImageView_93 --//
//                               Positioned(
//                                 left: 320,
//                                 top: 0,
//                                 child: SizedBox(
//                                   width: 25 * widthScale,
//                                   height: 25 * heightScale,
//                                   child: Image.asset(
//                                       "assets/batteryfull_ImageView_93-25x25.png"),
//                                 ),
//                               ),
// //-- End batteryfull_ImageView_93 --//
// //-- Component _TextView_94 --//
//                               const Positioned(
//                                   child: Text(
//                                 "9:40 ",
//                                 overflow: TextOverflow.visible,
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w700,
//                                     color: FvColors.black,
//                                     wordSpacing: 1.0),
//                               )),
// //-- End _TextView_94 --//
//                             ]),
                      ),
                    ),

//-- End TopPageComponents_Container_90 --//
//-- Component SIGNIN_TextView_95 --//
                    const Positioned(
                        left: 80,
                        top: 100,
                        child: Text(
                          "SIGN IN ",
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 64,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              wordSpacing: 1.0),
                        )),
//-- End SIGNIN_TextView_95 --//
//-- Component SignUpTabs_EditText_96 --//

                    Positioned(
                      left: 33,
                      top: 395,
                      child: SizedBox(
                        width: 325,
                        height: 75,

                        child: Column(
                          children: [
                            reusuableTextField("Enter your UIUC email",
                                Icons.email, false, _emailController)
                          ],
                        ),
                        // child: TextFormField(
                        //     textAlign: TextAlign.left,
                        //     maxLines: (50 * 0.10).toInt(),
                        //     decoration: InputDecoration(
                        //       contentPadding: EdgeInsets.only(
                        //           left: 20, top: 45), // remove or set it to 0
                        //       filled: true,
                        //       fillColor: Color.fromARGB(255, 211, 207, 207),
                        //       hintText: 'Enter your UIUC email',
                        //       hintStyle: const TextStyle(
                        //           color: Color.fromARGB(255, 121, 118, 118)),
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(100),
                        //         borderSide: const BorderSide(
                        //             style: BorderStyle.none, width: 0),
                        //       ),
                        //     ),
                        //     style: const TextStyle(
                        //       color: Color.fromARGB(255, 121, 118, 118),
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.w700,
                        //     ))),
                      ),
                    ),
//-- End SignUpTabs_EditText_96 --//
//-- Component SignUpTabs_EditText_97 --//

                    Positioned(
                      left: 33,
                      top: 474,
                      child: SizedBox(
                          width: 325,
                          height: 75,
                          child: Column(
                            children: [
                              reusuableTextField("Enter your passsword",
                                  Icons.password, true, _passwordController)
                            ],
                          )
                          // child: TextFormField(
                          //     textAlign: TextAlign.left,
                          //     maxLines: (50 * 0.10).toInt(),
                          //     decoration: InputDecoration(
                          //       contentPadding: EdgeInsets.only(
                          //           left: 20, top: 40), // remove or set it to 0
                          //       filled: true,
                          //       fillColor: Color.fromARGB(255, 211, 207, 207),
                          //       hintText: 'Enter your password',
                          //       hintStyle: const TextStyle(
                          //           color: Color.fromARGB(255, 121, 118, 118)),
                          //       border: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular(100),
                          //         borderSide: const BorderSide(
                          //             style: BorderStyle.none, width: 0),
                          //       ),
                          //     ),
                          //     style: const TextStyle(
                          //       color: Color.fromARGB(255, 121, 118, 118),
                          //       fontSize: 16,
                          //       fontWeight: FontWeight.w700,
                          //     ))

                          ),
                    ),
//-- End SignUpTabs_EditText_97 --//
//-- Component ForgotPasswordClickHere_TextView_98 --//

//-- End ForgotPasswordClickHere_TextView_98 --//
//-- Component DonthaveanaccountSignuphere_TextView_99 --//
                    Positioned(
                      top: 635,
                      left: 50,
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            text: "Don't have an account?  ",
                            children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  registrationScreen_screen_3()));
                                    },
                                  text: "Sign Up",
                                  style: TextStyle(
                                    color: Color.fromRGBO(21, 104, 165, 1),
                                    fontSize: 20,
                                  ))
                            ]),
                      ),
                    ),
//-- End DonthaveanaccountSignuphere_TextView_99 --//
//-- Component Login_TextView_100 --//

                    Positioned(
                      left: 25,
                      top: 570,
                      child: Container(
                        width: 325 * widthScale,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(21, 104, 165, 1),
                          ),
                          //backgroundColor: Color.fromRGBO(21, 104, 165, 1),
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onPressed: () async {
                            setState(
                              () {
                                _isVisible = false;
                                num = 95.0;
                                text = "";
                              },
                            );
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => Center(
                                  child: CircularProgressIndicator(
                                backgroundColor:
                                    Color.fromARGB(255, 219, 114, 45),
                              )),
                            );
                            try {
                              if (_passwordController.text == "") {
                                throw new FormatException();
                              }
                              if (_emailController.text == "") {
                                throw new FormatException();
                              }
                              FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: _emailController.text.trim(),
                                      password: _passwordController.text.trim())
                                  .then((value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            homePage_screen_2(recordObject: 0)));
                              }).onError((error, stackTrace) {
                                print("wrong password");
                                setState(
                                  () {
                                    text = "WRONG PASSWORD!";
                                    _isVisible = true;
                                    num = 110;
                                  },
                                );
                              });
                            } catch (FormatException) {
                              if (_passwordController.text == "") {
                                print("no password");
                                setState(
                                  () {
                                    text = "PLEASE TYPE YOUR PASSWORD!";
                                    _isVisible = true;
                                    num = 65;
                                  },
                                );
                              }
                              if (_emailController.text == "") {
                                print("no email");
                                setState(
                                  () {
                                    text = "PLEASE TYPE YOUR EMAIL!";
                                    _isVisible = true;
                                    num = 90;
                                  },
                                );
                              }
                            } finally {
                          Navigator.pop(context);
                        }
                          },
                        ),
                      ),
                    ),

                    Positioned(
                        left: num,
                        top: 540,
                        child: Visibility(
                            visible: _isVisible,
                            child: Text(
                              text,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 143, 28, 20),
                                  wordSpacing: 1.0),
                            ))),
//-- End Login_TextView_100 --//
//-- Component undrawwalkingoutsiderexo_ImageView_101 --//
                    Positioned(
                      left: 44,
                      top: 182,
                      child: SizedBox(
                        width: 294,
                        height: 172,
                        child: Image.asset(
                            "assets/undrawwalkingoutsiderexo_ImageView_101-294x172.png"),
                      ),
                    ),
//-- End undrawwalkingoutsiderexo_ImageView_101 --//
                  ],
                )),
          ],
//-- Component ScrollContainer --//
//-- End ScrollContainer --//
        ),
      ),
    );
  }
}
