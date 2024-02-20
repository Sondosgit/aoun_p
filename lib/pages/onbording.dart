import 'package:flutter/material.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Center(
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
                  Image.asset("img/elderly.jpg"),
                  const Text(
                    "كبير سن",
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Image.asset("img/cargiver.jpg"),
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
          ],
        ),
      ),
    );
  }
}
