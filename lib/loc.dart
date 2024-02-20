import 'package:flutter/material.dart';


class locations extends StatefulWidget {
  
 const locations ({super.key });
 @override
 State<locations> createState() => _locationsState();

} 
class _locationsState extends State<locations> {
  
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