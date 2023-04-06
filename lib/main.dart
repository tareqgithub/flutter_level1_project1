// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_project1_level1/pages/login.dart';
import 'package:flutter_project1_level1/pages/signup.dart';
import 'package:flutter_project1_level1/pages/welcome.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" :(context) => Welcome(),
        "/login" :(context) => Login(),
        "/signup" :(context) => SignUp(),
      },
    );
  }
}