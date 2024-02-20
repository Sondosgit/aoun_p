import 'package:flutter/material.dart';


class exercise extends StatefulWidget {
  
 const exercise ({super.key });
 @override
 State<exercise> createState() => _exerciseState();

} 
class _exerciseState extends State<exercise> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF6869D6) , size: 33 ),
        title: Text("الموقع" ,style: TextStyle(fontSize: 36 , color: Color(0xFF6869D6) , fontWeight: FontWeight.bold) )
        ),
      body: Container( child : Text ("yes")) ,
      );
  }
}