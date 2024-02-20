import 'package:flutter/material.dart';

class Checklist extends StatefulWidget {
  const Checklist({Key? key}) : super(key: key);

  @override
  _ChecklistState createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
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
          icon: Icon(Icons.settings),
          iconSize: 33,
        ),
        shadowColor: Colors.grey,
        elevation: 5,
        toolbarHeight: 80,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '                 إنجازاتك',
                style: TextStyle(
                  color: Color.fromARGB(255, 100, 44, 126),
                  fontSize: 50,
                ),
              ),
            ),
            SizedBox(
              width: 690,
              height: 80,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  "دواءالقلب",
                  style: TextStyle(fontSize: 28),
                ),
                icon: Icon(Icons.medication),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: 110, right: 150),
                ),
              ),
            ),
            SizedBox(
              width: 690,
              height: 80,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  "دواء السكر",
                  style: TextStyle(fontSize: 26),
                ),
                icon: Icon(Icons.medication),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: 110, right: 150),
                ),
              ),
            ),
            SizedBox(
              width: 690,
              height: 80,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  "صلاة العشاء",
                  style: TextStyle(fontSize: 23),
                ),
                icon: Icon(Icons.mosque),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: 110, right: 150),
                ),
              ),
            ),
            SizedBox(
              width: 690,
              height: 80,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  "صلاة المغرب",
                  style: TextStyle(fontSize: 22),
                ),
                icon: Icon(Icons.mosque),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: 110, right: 150),
                  primary: Color.fromARGB(255, 225, 220, 220),
                ),
              ),
            ),
            SizedBox(
              width: 690,
              height: 80,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  "صلاة العصر",
                  style: TextStyle(fontSize: 23),
                ),
                icon: Icon(Icons.mosque),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(left: 110, right: 150),
                  primary: Color.fromARGB(255, 225, 220, 220),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
