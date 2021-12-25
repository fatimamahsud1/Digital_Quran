import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Explore_Mosques extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff40010A),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
              'Mosques',
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
            padding: new EdgeInsets.fromLTRB(0, 50, 1, 0),

              child: InkWell(
                  child: new Text("Mosques Nearest \n You",

                    style: TextStyle(fontWeight: FontWeight.w900,
                        color: Color(0xff40010A),
                        fontSize: 25),
                    textAlign: TextAlign.center,),
            onTap: () => launch('https://www.halaltrip.com/find-mosques-near-me/')
              )
          ),
        ),
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
            padding: new EdgeInsets.fromLTRB(0, 40, 1, 0),
            child: InkWell(
                child: new Text("World Famous \n Mosques",
                  style: TextStyle(fontWeight: FontWeight.w900,
                      color: Color(0xff40010A),
                      fontSize: 25),
                  textAlign: TextAlign.center,),
                onTap: () => launch('https://www.islamicfinder.org/news/famous-mosques-around-the-world/')
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
            padding: new EdgeInsets.fromLTRB(0, 30, 1, 0),
            child: InkWell(
            child: new Text("All About \n Mosques",
              style: TextStyle(fontWeight: FontWeight.w900,
                  color: Color(0xff40010A),
                  fontSize: 25),
              textAlign: TextAlign.center,),
                onTap: () => launch('https://www.britannica.com/topic/mosque')
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