import 'package:flutter/material.dart';
import 'package:aoun_project/prayer.dart';
import 'package:aoun_project/med.dart';
import 'package:aoun_project/loc.dart';
import 'package:aoun_project/setting.dart';
import 'package:aoun_project/game.dart';



class home extends StatefulWidget {
  
 const home ({super.key });
 @override
 State<home> createState() => _HomeState();

} 
class _HomeState extends State<home> {
  List items = [
    {"Image": 'img/medicine.png' , "color" : Color(0xFFF1CE74) , "title" : "الأدويه" , "page" : pills()},
    {"Image": 'img/mosque.png' , "color" : Color(0xFF07D8A9) , "title" : "الصلاه" , "page" : pray()},
    {"Image": 'img/location.png' , "color" : Color(0xFF70C8DC) , "title" : "الموقع" , "page" : locations()},
    {"Image": 'img/puzzle.png' ,  "color" : Color.fromARGB(255, 127, 207, 244),"title" : "التمارين" , "page" : exercise()},
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    
      bottomNavigationBar:ClipRRect(
        borderRadius:const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
        showSelectedLabels: false,   
        showUnselectedLabels: false,
        backgroundColor: Color(0xFF6869D6),
        selectedItemColor: Colors.white,
        iconSize: 40,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.people),label: '' ),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: '' ),
        BottomNavigationBarItem(icon: Icon(Icons.check_circle) , label: '')
      ]),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical : 10 , horizontal: 10), 
        child : ListView(
          children: [
            Container(
              child:
            Row( children: [
              Expanded( child: Text ("مرحبا احمد"  , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold))),
              IconButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute
                    (builder: (context) => settingg()));
                
                },
               icon: Icon(Icons.settings , size: 40,)),
               
             ],)),
             
              
             //----------------------------------------------------
             Container( height: 45),
             GridView.builder(
              

              itemCount: items.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 230 , mainAxisSpacing: 10, crossAxisSpacing: 20) , 
             padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
             itemBuilder: (context ,i){
              //---------------
              return Column( 
                children : [Material(
                color: items[i]['color'],
                elevation: 10,
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child : InkWell(
                  splashColor: Colors.black,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute
                    (builder: (context) => items[i]['page']));
                  },
                  child: Column( 
                  children:[ Ink.image(image: AssetImage(items[i]['Image']),
                    fit: BoxFit.contain,
                    width: 190,
                    height: 190,
                    padding : EdgeInsets.all(10.0),
                  ),
                  //SizedBox(height:5,),
                  ]
                  ),)),
                Text(items[i]["title"] , style: TextStyle(fontSize: 27 , color: Colors.black , fontWeight: FontWeight.bold),)
                ]
              ); 
              //-------------------------------------------
             },
             )
             ,
         ])
        ) ,
     )
    ;
  }
}