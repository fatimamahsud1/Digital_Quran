import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Explore_Islamic_Scholars extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff40010A),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
              'Scholars',
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
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0))),
                      padding: new EdgeInsets.fromLTRB(35, 15, 1, 10),

                      child: Row(
                        children: [
                          Text (
                              "Select Your Country",
                              style: TextStyle(fontWeight: FontWeight.w600,
                                  color: Colors.grey,
                                  fontSize: 15),
                              textAlign: TextAlign.center),


                          new DropdownButton<String>(
                              items: <String>['Pakistan', 'India', 'Turkey', 'Afghanistan'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                value:value;
                              }),
                        ],
                      )
                  )
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
                    child: new Text("Scholars Of Your Country",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          color: Color(0xff40010A),
                          fontSize: 20),
                      textAlign: TextAlign.center,),
                        onTap : () => launch('https://en.wikipedia.org/wiki/Category:Pakistani_Sunni_Muslim_scholars_of_Islam')
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
                    child: new Text("Most Famous Scholars",
                      style: TextStyle(fontWeight: FontWeight.w900,
                          color: Color(0xff40010A),
                          fontSize: 20),
                      textAlign: TextAlign.center,),
                        onTap : () => launch('https://www.theislamicquotes.com/top-islamic-scholars/')
                    ),
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
                    padding: new EdgeInsets.fromLTRB(0, 70, 1, 0),
                    child: new Text("Favourites",

                      style: TextStyle(fontWeight: FontWeight.w900,
                          color: Color(0xff40010A),
                          fontSize: 20),
                      textAlign: TextAlign.center,),
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