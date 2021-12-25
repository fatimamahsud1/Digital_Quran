import 'package:flutter/material.dart';
import 'Explore_Mosques.dart';
import 'Explore_Islamic_Scholars.dart';
import 'Explore_Islamic_Articles.dart';
import 'Explore_Islamic_Books.dart';
import 'Explore_Islamic_Videos.dart';


class Explore_MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff40010A),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Explore ',
            style: TextStyle(fontWeight: FontWeight.w600,
                color: Color(0xff40010A),
                fontSize: 42),
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
              padding: new EdgeInsets.fromLTRB(1, 50, 1, 20),
              height: 160.0,
              width: 650.0,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),

                child: new Center(
                  child: new Text("Mosques",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          color: Color(0xff40010A),
                          fontSize: 25),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>Explore_Mosques()));
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
                  child: new Text("Scholars",
                    style: TextStyle(fontWeight: FontWeight.w900,
                        color: Color(0xff40010A),
                        fontSize: 25),
                    textAlign: TextAlign.center,),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Explore_Islamic_Scholars()));
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
                  child: new Text("Books",
                    style: TextStyle(fontWeight: FontWeight.w900,
                        color: Color(0xff40010A),
                        fontSize: 25),
                    textAlign: TextAlign.center,),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Explore_Islamic_Books()));
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
                  child: new Text("Videos",
                    style: TextStyle(fontWeight: FontWeight.w900,
                        color: Color(0xff40010A),
                        fontSize: 25),
                    textAlign: TextAlign.center,),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Explore_Islamic_Videos()));
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
                  child: new Text("Articles",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        color: Color(0xff40010A),
                        fontSize: 25),
                    textAlign: TextAlign.center,),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Explore_Islamic_Articles()));
              print("Tapped");
            },
          ),
        ],
        ),
      ),
    );
  }
}