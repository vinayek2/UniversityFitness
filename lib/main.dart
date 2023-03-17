import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ufit/calendar.dart';
import 'package:ufit/homePage_screen_2.dart';
import 'package:ufit/profile.dart';
import 'package:ufit/user_input.dart';
import 'package:ufit/welcomePage_screen_1.dart';
import 'package:ufit/signInScreen_screen_4.dart';
import 'package:ufit/registrationScreen_screen_3.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: welcomePage_screen_1(),
    );
  }
}
