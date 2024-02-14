

import 'package:aoun_project/pages/onbording.dart';
import 'package:flutter/material.dart';


class Welcom extends StatefulWidget {
  const Welcom({Key? key}) : super(key: key);

  @override
 
  // ignore: library_private_types_in_public_api
  _WelcomState createState() => _WelcomState();
}

class _WelcomState extends State<Welcom> {
  @override
  void initState() {
    super.initState();

    // Add a delay of 5 seconds (adjust the duration as needed)
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Onbording()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              "img/welcom.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              
            ),
          ),
          // Add more widgets or content here if needed
        ],
      ),
    );
  }
}