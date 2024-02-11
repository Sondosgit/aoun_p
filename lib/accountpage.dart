import 'package:flutter/material.dart';

class accountpage extends StatefulWidget {
  const accountpage({Key? key}) : super(key: key);

  @override
  _accountpageState createState() => _accountpageState();
}

class _accountpageState extends State<accountpage> {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.topRight,
          child: Text(
            "صفحة المستخدم",
            textAlign: TextAlign.right,
            style: TextStyle(
             // color: Colors.grey,
              fontSize: 35,
            ),
          ),
        ),

          shadowColor: Colors.grey,
        elevation: 5,
        toolbarHeight: 80,
          

        ),

    );

}}