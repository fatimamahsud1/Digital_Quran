import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Explore_Islamic_Videos extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff40010A),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
              'Videos',
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
                    padding: new EdgeInsets.fromLTRB(0, 40, 1, 0),
                    child: InkWell(
                    child: new Text("Islamic \n Videos",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          color: Color(0xff40010A),
                          fontSize: 25),
                      textAlign: TextAlign.center,),
                      onTap: () => launch('https://www.youtube.com/channel/UCD0WysHED1NfXUk3vedtRhQ')
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
                    padding: new EdgeInsets.fromLTRB(0, 50, 1, 0),
                    child: InkWell(
                    child: new Text("History Of \n Islam",

                      style: TextStyle(fontWeight: FontWeight.w900,
                          color: Color(0xff40010A),
                          fontSize: 25),
                      textAlign: TextAlign.center,),

                      onTap : () => ('https://www.youtube.com/watch?v=MItbLalNbiY')
                    )
                  ),
                ),
                onTap: () {
                  print("Tapped");
                },
              ),

              InkWell(
                child: Container(
                  padding: new EdgeInsets.fromLTRB(1,0, 1, 20),
                  height: 140.0,
                  width: 250.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    padding: new EdgeInsets.fromLTRB(0, 30, 1, 0),
                    child: InkWell(
                    child: new Text("Islam: \n The Untold Story",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          color: Color(0xff40010A),
                          fontSize: 25),
                      textAlign: TextAlign.center,),
                      onTap: () => ('https://www.youtube.com/watch?v=j9S_xbjIRgE')
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