import 'package:aoun_project/accountpage.dart';
import 'package:aoun_project/checklistpage.dart';
import 'package:aoun_project/login.dart';
import 'package:aoun_project/pages/onbording.dart';
import 'package:aoun_project/pages/welcome.dart';
import 'package:aoun_project/signup.dart';
import 'package:flutter/material.dart';
import 'package:aoun_project/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: const Welcom(),
    );
  }
}
