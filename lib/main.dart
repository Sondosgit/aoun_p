//import 'dart:ffi';

//import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
 //class MyApp extends StatelessWidget{
class MyApp extends StatefulWidget{
  
const MyApp ({super.key});

@override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  int selectedindex = 1;

  List <Widget> listwidget =[

//account page    
  Text("1"), 
  
//home page
  Center(
  child: Padding(
    padding: EdgeInsets.only(top: 100), // Adjust top padding as needed
    child: 
        YourCustomScrollView()))
    ,
   //checklist 
    Text("3"),
  ];

  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
           
         appBar: AppBar(title: const Align(
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
          
          leading: IconButton(onPressed: (){}, icon: const Icon(Icons.settings),iconSize: 33,),
          shadowColor: Colors.grey,
          elevation: 5,
          toolbarHeight: 60,
          
          
          ),
          bottomNavigationBar:BottomNavigationBar(
          
          backgroundColor: Color.fromARGB(255, 85, 72, 158),
          selectedItemColor: Colors.white,
          iconSize: 40,
          currentIndex: selectedindex,
          onTap: (value) {
            setState(() {
             selectedindex = value;
             print(value);
            });
          },
          items:
         [BottomNavigationBarItem(icon: Icon(Icons.person),label: "account")
          ,BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: "checklist")
         ],
         showSelectedLabels: false,
        showUnselectedLabels: false
         ),

          body:
          Container(
            
            child:
            Column(
              children: <Widget>[
                Expanded(
                  child:
            listwidget.elementAt(selectedindex)),])
           ),
        
      ),
    );
  }
}


      

class YourCustomScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
     alignment: Alignment.bottomLeft,
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverGrid.count(
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              children: <Widget>[
                
                _buildContainer(Icons.mosque, 'الصلاة', Color.fromARGB(255, 93, 227, 158)!),
                _buildContainer(Icons.medication, "الأدوية ",  Color.fromARGB(255, 221, 217, 92)!),
                _buildContainer(Icons.games, 'التمارين', Color.fromARGB(255, 179, 112, 224)!),
                _buildContainer(Icons.location_pin, 'الموقع', Color.fromARGB(255, 106, 184, 236)!),
                
                
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer(IconData icon, String text, Color color) {
  return Column(
    children: [
      Container(
        height: 140, // Adjust the height as needed
        width: 140,
        decoration: BoxDecoration(
          color: color, // Set the background color
          borderRadius: const BorderRadius.all(Radius.circular(16)), // Set the border radius
        ),

        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 110, // Adjust the icon size as needed
                color: Colors.white, // Set the icon color
              ),
            ],
          ),
        ),
      ),
      //SizedBox(height: 6.5), // Add some space between icon and text
      Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 78, 76, 76)
        ),
      ),
    ],
  );
}}





class CustomBoxes extends StatelessWidget{
  final dynamic ti;
  //final Icon ic;
 // final dynamic co;
  const CustomBoxes({super.key, this.ti});
  
  @override
  Widget build(BuildContext context){
    return 
    Container( 
                padding: const EdgeInsets.all(8),
                color: Colors.green[100],
                child:  Text("$ti"),
                
              );
  }
}

