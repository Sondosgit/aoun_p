import 'package:flutter/material.dart';
import 'package:aoun_project/login.dart';

class Onbording extends StatelessWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center ,
            end: Alignment.bottomCenter, 
            colors: [Colors.white , Color.fromARGB(255, 181, 187, 253)])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: Text("من أنت؟"  ,style: TextStyle(fontSize: 36 , color: Colors.black , fontWeight: FontWeight.bold) )
        ), ),
      body: Center( child : Column( children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 40)),
        Material(
          color: Color(0xFF8485EC),
          elevation: 9,
          shape: CircleBorder(),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child:InkWell(
            splashColor: Colors.black26,
            onTap: (){
             Navigator.of(context).push(MaterialPageRoute
                    (builder: (context) => LoginScreen()));

            },
           child: Ink.image(image: AssetImage("img/eld.png"),
           height: 200,
           width: 200,
           fit: BoxFit.contain,
          
        ),)),
        Text("كبير السن" ,style: TextStyle(fontSize: 30 , color: Colors.black , fontWeight: FontWeight.w100),),
        Container(height:20 ,),
        Material(
          color: Color(0xFF8485EC),
          elevation: 9,
          shape: CircleBorder(),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child:InkWell(
            splashColor: Colors.black26,
            onTap: (){},
           child: Ink.image(image: AssetImage("img/care.png"),
           height: 200,
           width: 200,
           fit: BoxFit.contain,
          
        ),)),
        Text("مقدم الرعاية", style: TextStyle(fontSize: 30 , color: Colors.black , fontWeight: FontWeight.w100),)

      ],)) 
      )
     );
  }
}
