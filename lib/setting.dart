import 'package:flutter/material.dart';
import 'package:aoun_project/edit.dart';

class settingg extends StatefulWidget {
  
 const settingg ({super.key });
 @override
 State<settingg> createState() => _settingState();
} 
class _settingState extends State<settingg> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF6869D6) , size: 33 ),
        title: Text("الأعدادات" ,style: TextStyle(fontSize: 36 , color: Color(0xFF6869D6) , fontWeight: FontWeight.bold) )
        ),
      body: Container(
        
        margin: EdgeInsets.symmetric(vertical : 10 , horizontal: 10), 
        child : ListView(
        children: [
          Expanded(
            flex: 1,
            child: Container(
        width: 500,
        height: 450,
        //color: Colors.lightBlue,
        margin: EdgeInsets.symmetric(vertical : 80 , horizontal: 10), 
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [ const 
          Text("..تطبيق عون \n يوفر لك وسائل مطورة نحو حياة أفضل" ,
             textAlign:TextAlign.right  , 
             style: TextStyle(
              fontSize: 26 , 
              color: Color(0xFFA6A6A6),
              fontWeight: FontWeight.w100)
              ),
          Container(height:40 ,),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute
                    (builder: (context) => Edit()));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.white, ),
            child: const Row(
               
               children: [
                Icon(Icons.person,
                size: 40.0,
                color: Colors.black,),
               Text('تعديل الملف الشخصي' , style: TextStyle(color: Colors.black , fontSize:30 ),), // <-- Text
               SizedBox( width: 4,),
               ],),)
          ],),),
          ),
          Expanded(
            flex: 1,
            
            child: Row(
            children: [TextButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.white, ),
            child: const Row(
               mainAxisAlignment: MainAxisAlignment.end,
               mainAxisSize: MainAxisSize.min,
               children: [
                Icon(Icons.logout_rounded,
                size: 30.0,
                color: Colors.black,),
               Text("تسجيل الخروج", style: TextStyle(color: Colors.black , fontSize:25 ),), // <-- Text
               
               ],),)
              //TextButton.icon(onPressed: (){}, label: Text("تسجيل الخروج" , ) , icon: Icon(Icons.power_settings_new_outlined), )
            ],
          ))
      ]))
    );
  }
}