import 'package:day_13/Model/government_vc.dart';
import 'package:day_13/Model/others.dart';
import 'package:day_13/home_page.dart';
import 'package:day_13/screen/book_vaccine.dart';
import 'package:day_13/screen/forget_password.dart';
import 'package:day_13/screen/introduc.dart';
import 'package:day_13/screen/login_page.dart';
import 'package:day_13/screen/support.dart';
import 'package:day_13/screen/vaccine_list.dart';
import 'package:day_13/widget/my_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OnBoardingPage ());
  }
}
