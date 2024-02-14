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
                children: [
                  const Text(
                    "من أنت ؟",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 37,
                    ),
                  ),
                  Image.asset("img/elderly.jpg"),
                  //const SizedBox(height: 28),
                  //  Image.asset("img/cargiver.jpg"),
                  //const Text("كبير سن")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
