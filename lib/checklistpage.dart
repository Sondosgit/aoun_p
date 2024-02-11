import 'package:flutter/material.dart';

class Checklistpage extends StatefulWidget {
  const Checklistpage({Key? key}) : super(key: key);

  @override
  _ChecklistpageState createState() => _ChecklistpageState();
}

class _ChecklistpageState extends State<Checklistpage> {

@override
  Widget build(BuildContext context) {
    return 
    Scaffold(
    appBar: AppBar(
        title: const Align(
          alignment: Alignment.topRight,
          child: Text(
            "مرحبا أحمد",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 35,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
          iconSize: 33,
        ),
        shadowColor: Colors.grey,
        elevation: 5,
        toolbarHeight: 80,
      ), 
      body:
      Container(
        child: Align(
          alignment: Alignment.topRight,
          child: Text(
            "إنجازك",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
            ),
          ),
        ),
      )
    );

}}