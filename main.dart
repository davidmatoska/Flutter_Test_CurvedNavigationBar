import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    ); // MaterialApp
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int page=0;

  @override
  Widget build(BuildContext context) {

    var tab =<Widget>[
      Center(
        child: Container(
          child: Image.asset('images/1.jpg', height: 200,width: 200,),
        ),
      ),

      Center(
          child: Container(
            child: Image.asset('images/2.jpg', height: 200,width: 200,),
          ),
      ),

      Center(
          child: Container(
            child: Image.asset('images/1.jpg', height: 200,width: 200,),
          ),
      ),

      Center(
        child: Container(
          child: Image.asset('images/2.jpg', height: 200,width: 200,),
        ),
      ),

    ];

    return Scaffold(
      appBar: AppBar(
       actions: <Widget>[
         IconButton(
           icon: Icon(Icons.audiotrack, color: Colors.white),
           onPressed: () {},
         ),
         IconButton(
           icon: Icon(Icons.beach_access, color: Colors.white),
           onPressed: () {},
         ),
       ],
        title: Text( 'MY RE COACH', style: TextStyle(fontSize:20, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),


    bottomNavigationBar: CurvedNavigationBar(
      items: <Widget>[
        Icon(Icons.beenhere, color:Colors.tealAccent,size:50,),
        Icon(Icons.assessment, color:Colors.tealAccent,size:50,),
        Icon(Icons.panorama, color:Colors.tealAccent,size:50,),
        Icon(Icons.person_pin, color:Colors.tealAccent,size:50,),
      ],

      backgroundColor: Colors.deepOrange,
      animationCurve: Curves.easeInCirc,
      animationDuration: Duration(seconds: 1),
      onTap: (index) {
        setState(() {
            page= index;
            }
        );
      }


    ),

      body: Center(
        child: tab[page],
        /*
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bienvenue',
                style: TextStyle(color: Colors.blue, fontSize:21),
              )
            ],
          )
        )
     */
        ),

    );
  }

}



