import 'package:flutter/material.dart';

class addElderly extends StatefulWidget {
  const addElderly({Key? key}) : super(key: key);

  @override
  _addElderlyState createState() => _addElderlyState();
}

class _addElderlyState extends State<addElderly> {

@override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( 
          automaticallyImplyLeading: true,
        ),
        body: Center( // Wrap your Column with Center widget
          child: Container(
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center, // Center the text vertically
              children: [
                Text("لم تقم بإضافة كبير السن حتى الآن", style: TextStyle(fontSize: 30),),

                MaterialButton(
                  color: Color.fromARGB(255, 114, 79, 168),
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => addElderlypage()));
                  },
                   child: Text("إضافة", style: TextStyle(fontSize: 25 ,color: Colors.white ),)
                  , )
              ],
            ),
          ),
          
        ),
        
      ),
    );
  }

}

class addElderlypage extends StatelessWidget {

   const  addElderlypage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
          automaticallyImplyLeading: true,
        ),
      
      body: Center(child: 
      Column(children: [
        SizedBox(
  width: 200,
  height: 90,
  child: Center(
    child: Text('إضافة كبير سن', style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 78, 39, 107)), ),
  ),
     ),
     SizedBox(
      width: 500,
  height: 40,
  child: Center(
    child: Text('للتتمكن من إضافة كبير السن, قم بإدخال البريد الالكتروني المسجل لديه', style: TextStyle(fontSize: 15),),
  ),
     ),
     
        TextField(
          
          decoration: InputDecoration(
            
            label: Text (" البريد الالكتروني", style:TextStyle(color: Colors.black, fontSize: 20)),
            fillColor: Colors.grey,
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 30,),

        MaterialButton(
                  color: Color.fromARGB(255, 114, 79, 168),
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => confirmAddpage()));
                  },
                   child: Text("إضافة", style: TextStyle(fontSize: 25 ,color: Colors.white ),)
                  , )
      ]),), 
      );

  }}

  class confirmAddpage extends StatelessWidget {
   const confirmAddpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:  Color.fromARGB(255, 78, 39, 107),
        ),
        child: Icon(
          IconData(0xe156, fontFamily: 'MaterialIcons'),
          size: 80, // Adjust the size of the icon
          color: Colors.white, // Icon color
        ),
      ),
      SizedBox(height: 15), 
      Text(
        "تمت الإضافة بنجاح",
        style: TextStyle(fontSize: 25, color:  Color.fromARGB(255, 26, 8, 40)),
      ),
      SizedBox(height: 120),
      MaterialButton(
                  color: Color.fromARGB(255, 114, 79, 168),
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => confirmAddpage()));//change!!!
                  },
                   child: Text("استمرار", style: TextStyle(fontSize: 25 ,color: Colors.white ),)
                  , )
    ],
  ),
)

      );
   
  }}


