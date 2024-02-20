import 'package:flutter/material.dart';


class pills extends StatefulWidget {
  
 const pills ({super.key });
 @override
 State<pills> createState() => _pillsState();

} 
class _pillsState extends State<pills> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF6869D6) , size: 33 ),
        title: Text("الأدويه" ,style: TextStyle(fontSize: 36 , color: Color(0xFF6869D6) , fontWeight: FontWeight.bold) )
        ),
      body: Container( child : Text ("yes")) ,
      );
  }
}