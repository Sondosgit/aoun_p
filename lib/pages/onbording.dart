import 'package:flutter/material.dart';

class Onbording extends StatelessWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "من أنت ؟",
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Color(0xFF545454),
                  fontSize: 37,
                ),
              ),
              ClipOval(
                child: Image.asset(
                  "img/elderly.jpg",
                  width: 150, // Adjust as needed
                  height: 150, // Adjust as needed
                ),
              ),
              const Text(
                "كبير سن",
                style: TextStyle(
                  color: Color(0xFF545454),
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 50),
              ClipOval(
                child: Image.asset(
                  "img/cargiver.jpg",
                  width: 150, // Adjust as needed
                  height: 150, // Adjust as needed
                ),
              ),
              const Text(
                "مقدم رعاية",
                style: TextStyle(
                  color: Color(0xFF545454),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
