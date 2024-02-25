import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  
 const Edit ({super.key });
 @override
 State<Edit> createState() => _EditState();
} 
class _EditState extends State<Edit> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState() {
    username.text = ""; //innitail value of text field
    password.text = "";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
          appBar: AppBar(  
           centerTitle: true,
            iconTheme: IconThemeData(color: Color(0xFF6869D6) , size: 33 ),
            title: Text("تعديل الملف الشخصي" ,style: TextStyle(fontSize: 36 , color: Color(0xFF6869D6) , fontWeight: FontWeight.bold) )
        ),
          body: SingleChildScrollView(
            padding:EdgeInsets.symmetric( horizontal: 10) ,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              const SizedBox(height: 50),
              const Row(children: [Expanded(child: 
               Text("الأسم" , 
                textAlign:TextAlign.right  ,
                style: TextStyle(fontSize: 35 , color: Colors.black54,fontWeight: FontWeight.w100))),],),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.name,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: "محمد",
                  hintStyle: TextStyle(fontSize: 26 ,color: Color(0xFFA6A6A6) ,fontWeight: FontWeight.w100),
                  prefixIcon: Icon(Icons.edit),
                  prefixIconColor: Color(0xFF4C4D7B),
                  border: OutlineInputBorder(
                    borderSide:const BorderSide(
                      color:Color(0xFFA6A6A6),
                      width: 2.0),
                    borderRadius: BorderRadius.circular(70)
                   ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(10)
                  ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 20),
              const Row(children: [Expanded(child: 
               Text("البريد الالكتروني" , 
                textAlign:TextAlign.right  ,
                style: TextStyle(fontSize: 35 , color: Colors.black54,fontWeight: FontWeight.w100))),],),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: "moh@gmail.com",
                  hintStyle: TextStyle(fontSize: 26 ,color: Color(0xFFA6A6A6) ,fontWeight: FontWeight.w100),
                  prefixIcon: Icon(Icons.edit),
                  prefixIconColor: Color(0xFF4C4D7B),
                  border: OutlineInputBorder(
                    borderSide:const BorderSide(
                      color:Color(0xFFA6A6A6),
                      width: 2.0),
                    borderRadius: BorderRadius.circular(70)
                   ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(10)
                  ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 20),
              const Row(children: [Expanded(child: 
               Text("كلمة المرور", 
                textAlign:TextAlign.right  ,
                style: TextStyle(fontSize: 35 , color: Colors.black54,fontWeight: FontWeight.w100))),],),
              const SizedBox(height: 10),
              TextField(
                obscureText: true,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: "*******",
                  hintStyle: TextStyle(fontSize: 26,color: Color(0xFFA6A6A6) ,fontWeight: FontWeight.w100),
                  prefixIcon: Icon(Icons.edit),
                  prefixIconColor: Color(0xFF4C4D7B),
                  border: OutlineInputBorder(
                    borderSide:const BorderSide(
                      color:Color(0xFFA6A6A6),
                      width: 2.0),
                    borderRadius: BorderRadius.circular(70)
                   ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(10)
                  ),
                textDirection:TextDirection.rtl,
              ),
              const SizedBox(height: 70),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    
                  },
                  color: Color(0xFF6869D6),
                  textColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    vertical: 11,
                    horizontal: 100,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:const Text(
                    'تعديل',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
      ],
     )
    )
   );
  }
}