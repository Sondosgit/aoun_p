import 'package:aoun_project/accountpage.dart';
import 'package:aoun_project/checklistpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 1;

  final List<Widget> pages = [
  accountpage(),

    
  homeView(),

    Checklistpage(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
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
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Checklist")
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),


      body: pages[selectedindex],
    );
  }
}


class homeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
    appBar: AppBar(
        title: const Align(
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
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
          iconSize: 33,
        ),
        shadowColor: Colors.grey,
        elevation: 5,
        toolbarHeight: 80,
      ), 
      body:

      Center(
  child: Padding(
    padding: EdgeInsets.only(top: 100), // Adjust top padding as needed
    child: 
    
      //alignment: Alignment.bottomLeft,
       CustomScrollView(
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
                _buildContainer(Icons.medication, "الأدوية ", Color.fromARGB(255, 221, 217, 92)!),
                _buildContainer(Icons.games, 'التمارين', Color.fromARGB(255, 179, 112, 224)!),
                _buildContainer(Icons.location_pin, 'الموقع', Color.fromARGB(255, 106, 184, 236)!),
              ],
            ),
          ),
        ],
  )),
    ));
  }

  Widget _buildContainer(IconData icon, String text, Color color) {
    return Column(
      children: [
        Container(
          height: 140,
          width: 140,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 110,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 78, 76, 76),
          ),
        ),
      ],
    );
  }
}
