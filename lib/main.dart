import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_design_ep2/screens/sign_in.dart';
import 'package:flutter_design_ep2/utils/constants.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Design Ep2',
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: screenWidth < 500?TEXT_THEME_SMALL:TEXT_THEME_DEFAULT,
        fontFamily: "Monserrat",
      ),
      home: const SignInScreen(),
    );
  }
}
