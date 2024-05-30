import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/splassh_screen/Splash%20Screen.dart';
import 'package:first_ecommrce_app/widget/Home/Bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
