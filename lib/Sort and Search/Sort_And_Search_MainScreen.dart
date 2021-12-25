import 'package:flutter/material.dart';
import 'package:digital_quran/Sort%20and%20Search/JuzzSearch/JuzIndex.dart';

class Sort_And_Search_MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff40010A),
        appBar: AppBar(
          backgroundColor: Color(0xffDAA438),
          centerTitle: true,
          title: Text(
              'Sort And Search',
              style: TextStyle(fontWeight: FontWeight.w900,
                  color: Color(0xff40010A),
                  fontSize: 32),
              textAlign: TextAlign.center),
          toolbarHeight: 80,
        ),
    body: Center(
    child: Column(children: <Widget>[
    Container(
    padding: new EdgeInsets.fromLTRB(1, 20, 1, 20),
    height: 5.0,
    width: 320.0,
    color: Colors.transparent,

    ),
      InkWell(
        child: Container(
          padding: new EdgeInsets.fromLTRB(1, 50, 1, 20),
          height: 160.0,
          width: 650.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),

            child: new Center(
              child: new Text("Search Juzz",
                  style: TextStyle(fontWeight: FontWeight.w900,
                      color: Color(0xff40010A),
                      fontSize: 25),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>JuzIndex()));
          print("Tapped");
        },
      ),
      InkWell(
        child: Container(
          padding: new EdgeInsets.fromLTRB(1, 2, 1, 20),
          height: 110.0,
          width: 650.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            child: new Center(
              child: new Text("Search Passage",
                style: TextStyle(fontWeight: FontWeight.w900,
                    color: Color(0xff40010A),
                    fontSize: 25),
                textAlign: TextAlign.center,),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>JuzIndex()));
          print("Tapped");
        },
      ),

      InkWell(
        child: Container(
          padding: new EdgeInsets.fromLTRB(1, 0, 1, 10),
          height: 105.0,
          width: 650.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            child: new Center(
              child: new Text("Search Surah",
                style: TextStyle(fontWeight: FontWeight.w900,
                    color: Color(0xff40010A),
                    fontSize: 25),
                textAlign: TextAlign.center,),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>JuzIndex()));
          print("Tapped");
        },
      ),
      InkWell(
        child: Container(
          padding: new EdgeInsets.fromLTRB(1, 10, 1, 15),
          height: 120.0,
          width: 650.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            child: new Center(
              child: new Text("Search Manzil",
                style: TextStyle(fontWeight: FontWeight.w900,
                    color: Color(0xff40010A),
                    fontSize: 25),
                textAlign: TextAlign.center,),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>JuzIndex()));
          print("Tapped");
        },
      ),
      InkWell(
        child: Container(
          padding: new EdgeInsets.fromLTRB(1, 10, 1, 25),
          height: 120.0,
          width: 650.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            child: new Center(
              child: new Text("Search Sajda",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Color(0xff40010A),
                    fontSize: 25),
                textAlign: TextAlign.center,),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>JuzIndex()));
          print("Tapped");
        },
      ),
    ],
    ),
    ),
    );
  }
}