import 'package:aoun_project/pages/onbording.dart';
import 'package:aoun_project/pages/welcome.dart';
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
      home: const HomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcom(), 
        "/onbording": (context) => const Onbording(), 
      },
    );
  }
}