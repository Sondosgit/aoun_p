import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  
 const Edit ({super.key });
 @override
 State<Edit> createState() => _EditState();
} 
class _EditState extends State<Edit> {

   List elist = [
    { "title" : "الأسم" , "hint" : "محمد"},
    { "title" : "الإيميل" , "hint" : "moh@gmail.com"},
    { "title" : "كلمة المرور" , "hint" : "******" ,},
    
    
  ];

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
          body: Center(
            
            
         child: ListView.builder(
              shrinkWrap: true,
               itemCount: elist.length,
                padding: EdgeInsets.symmetric(  horizontal: 10),
                itemBuilder: (context ,i){
              //---------------
              return Column( 
                
                
                children : [
                  Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                   Row(
                    //mainAxisSize: MainAxisSize.min,
                    children: [Expanded(child: Text(elist[i]['title'] , textAlign:TextAlign.right  , 
                 style: TextStyle(
                 fontSize: 30 , 
                 color: Colors.black,
                 fontWeight: FontWeight.w100)
               )),],),
                TextField( 
                  controller: username,
                  decoration: InputDecoration( 
                       hintText :elist[i]['hint'],
                       hintStyle: TextStyle(fontSize: 20 ,color: Color(0xFFA6A6A6)),
                      suffixIcon: Icon(Icons.edit),
                      suffixIconColor: Color(0xFF4C4D7B),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFFA6A6A6),),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      isDense: true,                      // Added this
                      contentPadding: EdgeInsets.all(10)
                      ) //icon at head of input
                  ),
                ]
              ); 
              //-------------------------------------------
             },
        ) )
     ) ;
  }
}