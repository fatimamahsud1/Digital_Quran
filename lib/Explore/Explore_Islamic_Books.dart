import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Explore_Islamic_Books extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff40010A),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
              'Books',
              style: TextStyle(fontWeight: FontWeight.w900,
                  color: Color(0xff40010A),
                  fontSize: 42),
              textAlign: TextAlign.center),
          backgroundColor: Color(0xffDAA438),
          toolbarHeight: 80,
        ),

        body: Center(
            child: Column(children: <Widget>[
              Container(
                  padding: new EdgeInsets.fromLTRB(1, 50, 1, 20),
                  height: 130.0,
                  width: 320.0,
                  color: Colors.transparent,

              ),
              InkWell(
                child: Container(
                  padding: new EdgeInsets.fromLTRB(1, 0, 1, 10),
                  height: 140.0,
                  width: 250.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    padding: new EdgeInsets.fromLTRB(0, 90, 1, 0),
                    child: InkWell(
                    child: new Text("Urdu Books",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          color: Color(0xff40010A),
                          fontSize: 20),
                      textAlign: TextAlign.center,),
                        onTap: () => launch('https://www.urdupoint.com/books/category/islamic.html')
                    ),
                  ),
                ),
                onTap: () {
                  print("Tapped");
                },
              ),

              InkWell(
                child: Container(
                  padding: new EdgeInsets.fromLTRB(1,0, 1, 10),
                  height: 140.0,
                  width: 250.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    padding: new EdgeInsets.fromLTRB(0, 90, 1, 0),
                    child: InkWell(
                    child: new Text("English Books",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          color: Color(0xff40010A),
                          fontSize: 20),
                      textAlign: TextAlign.center,),
                        onTap: () => launch('https://www.muslimquest.com/free-islamic-books-in-english-download-pdf/')

                    ),
                  ),
                ),
                onTap: () {
                  print("Tapped");
                },
              ),

              InkWell(
                child: Container(
                  padding: new EdgeInsets.fromLTRB(1,0, 1, 15),
                  height: 140.0,
                  width: 250.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    padding: new EdgeInsets.fromLTRB(0, 80, 1, 0),
                    child: InkWell(
                    child: new Text("Arabic Books",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          color: Color(0xff40010A),
                          fontSize: 20),
                      textAlign: TextAlign.center,),
                      onTap: () => launch('https://www.sifatusafwa.com/en/')
                    ),
                  ),
                ),
                onTap: () {
                  print("Tapped");
                },
              ),
            ]
            )
        )
    );
  }
}