import 'package:flutter/material.dart';


class pray extends StatefulWidget {
  
 const pray ({super.key });
 @override
 State<pray> createState() => _prayState();

} 
class _prayState extends State<pray> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF6869D6) , size: 33 ),
        title: Text("الصلاه" ,style: TextStyle(fontSize: 36 , color: Color(0xFF6869D6) , fontWeight: FontWeight.bold) )
        ),
      body: Container( child : Text ("yes")) ,
      );
  }
}