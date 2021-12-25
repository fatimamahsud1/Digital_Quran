import 'package:flutter/material.dart';
import 'Explore_Mosques.dart';
import 'Explore_Islamic_Scholars.dart';
import 'package:digital_quran/Explore/Explore_MainScreen.dart';
import 'package:digital_quran/Sort and Search/Sort_And_Search_MainScreen.dart';
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff40010A),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Explore\\Search',
            style: TextStyle(fontWeight: FontWeight.w900,
                color: Color(0xff40010A),
                fontSize: 32),
            textAlign: TextAlign.center),
        backgroundColor: Color(0xffDAA438),
        toolbarHeight: 80,
      ),

      body: Center(
        child: Column
          (children: <Widget>[

          SizedBox(
            width: 100, // set this
          ),
          InkWell(
            child: Container(
              padding: new EdgeInsets.fromLTRB(1, 120, 1, 0),
              height: 200.0,
              width: 650.0,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: new Center(
                  child: new Text("Explore",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          color: Color(0xff40010A),
                          fontSize: 30),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Explore_MainScreen()));
              print("Tapped");
            },
          ),
          InkWell(
            child: Container(
              padding: new EdgeInsets.fromLTRB(1, 30, 1, 70),
              height: 180.0,
              width: 650.0,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: new Center(
                  child: new Text("Sort And Search",
                    style: TextStyle(fontWeight: FontWeight.w900,
                        color: Color(0xff40010A),
                        fontSize: 30),
                    textAlign: TextAlign.center,),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Sort_And_Search_MainScreen()));
              print("Tapped");
            },
          ),
        ],
        ),
      ),
    );
  }
}