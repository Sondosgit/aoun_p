import 'package:flutter/material.dart';


void main() {
  runApp(P());
}


class P extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Checklist(),
    );
  }
}

class Checklist extends StatefulWidget {
  const Checklist({super.key});

  @override
  State<Checklist> createState() => _MYState();
}

class _MYState extends State<Checklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          title:
              Text('           ..مرحبا محمد', style: TextStyle(fontSize: 40)),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 33,
                color: Color.fromARGB(255, 100, 44, 126),
              )),
        ),
        body: Center(
            child: Column(
              children: [
          Container( child: Text('                 إنجازاتك',
                style: TextStyle(
                  color: Color.fromARGB(255, 100, 44, 126),
                  fontSize: 50,
                  //textAlign: TextAlign.right
                )),
          ),
        //],

        // or Container
        SizedBox( 
          width: 690,
          height: 80, 
          child:ElevatedButton.icon(
            onPressed: () {},
            label: Text(
              "دواءالقلب",
              style: TextStyle(fontSize: 28),
            ),
            icon: Icon(Icons.medication),
            style: ElevatedButton.styleFrom(
                //backgroundColor: MaterialStateProperty.all(Colors.white),
                //foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 133, 44, 155),
                //padding:MaterialStateProperty.all(EdgeInsets.only(right: 44)),
                padding: EdgeInsets.only(left: 110, right: 150)),
          ),

        ),
        //),

        SizedBox( 
          width: 690,
          height: 80,
          child:ElevatedButton.icon(
            onPressed: () {},
            label: Text(
            "دواء السكر",
              style: TextStyle(fontSize: 26),
            ),
            icon: Icon(Icons.medication),
            style: ElevatedButton.styleFrom(
                //backgroundColor: MaterialStateProperty.all(Colors.white),
                //foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 133, 44, 155),
                //padding:MaterialStateProperty.all(EdgeInsets.only(right: 44)),
                padding: EdgeInsets.only(left: 110, right: 150)),
          ),

        ),

         SizedBox( 
          width: 690,
          height: 80,   
          child:ElevatedButton.icon(
            onPressed: () {},
            label: Text("صلاة العشاء",
              style: TextStyle(fontSize: 23),
            ),
            icon: Icon(Icons.mosque),
            style: ElevatedButton.styleFrom(
                //backgroundColor: MaterialStateProperty.all(Colors.white),
                //foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 133, 44, 155),
                //padding:MaterialStateProperty.all(EdgeInsets.only(right: 44)),
                padding: EdgeInsets.only(left: 110, right: 150)),
          ),

        ),

        SizedBox( 
          width: 690,
          height: 80,
          child:ElevatedButton.icon(
            onPressed: () {},
            label: Text(
              "صلاة المغرب",
              style: TextStyle(fontSize: 22),
            ),
            icon: Icon(Icons.mosque),
            style: ElevatedButton.styleFrom(
                //backgroundColor: MaterialStateProperty.all(Colors.white),
                //foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 133, 44, 155),
                //padding:MaterialStateProperty.all(EdgeInsets.only(right: 44)),
                padding: EdgeInsets.only(left: 110, right: 150),
                primary: Color.fromARGB(255, 225, 220, 220)),
          ),

        ),

        SizedBox( 
          width: 690,
          height: 80,
          child:ElevatedButton.icon(
            onPressed: () {},
            label: Text(
              "صلاة العصر",
              style: TextStyle(fontSize: 23),
            ),
            icon: Icon(Icons.mosque),
            style: ElevatedButton.styleFrom(
                //backgroundColor: MaterialStateProperty.all(Colors.white),
                //foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 133, 44, 155),
                //padding:MaterialStateProperty.all(EdgeInsets.only(right: 44)),
                padding: EdgeInsets.only(left: 110, right: 150),
                primary: Color.fromARGB(255, 225, 220, 220)),
          ),

        )
              ], 

        )
        )
        );
  }
}
