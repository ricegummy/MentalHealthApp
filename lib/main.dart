// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:mental_health_app/pages/dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mental_health_app/startup/login/login.dart';
import 'package:mental_health_app/startup/sign_up/sign_up.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Dashboard(),

      initialRoute: '/',
      routes: {
        //'/' :(context) => StartUpPage(),
        '/' :(context) => LoginPage(),
        '/register' :(context) => SignUpPage(),
        '/dashboard' :(context) =>Dashboard(),
      },

    );
  }
}





