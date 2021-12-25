import 'package:digital_quran/SearchModel/Searchjuzz/JuzzList.dart';
import 'package:digital_quran/SearchModel/Searchjuzz/SearchJuzz.dart';
import 'package:flutter/material.dart';
import 'package:digital_quran/ApiController/QuranAPI.dart';
import 'package:digital_quran/Sort%20and%20Search/JuzzSearch/Juz.dart';
import 'package:digital_quran/Widget/Flare.dart';
import 'package:digital_quran/Widget/BackBtn.dart';


class JuzIndex extends StatefulWidget {
  const JuzIndex({Key? key}) : super(key: key);

  @override
  State<JuzIndex> createState() => _JuzIndexState();
}

class _JuzIndexState extends State<JuzIndex> {


  // getting all Juz once!
  Future<void> _getAllJuzHiveBox() async {
    bool? _check;

    // putting values
    if (_check == null || !_check) {
      for (int i = 1; i <= 30; i++) {
        // create box
        await QuranAPI.getJuzz(i);
      }
    }
  }

  @override
  void initState() {
    _getAllJuzHiveBox();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xff40010A),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
              'Search Quran Juzz',
              style: TextStyle(fontWeight: FontWeight.w900,
                  color: Color(0xff40010A),
                  fontSize: 42),
              textAlign: TextAlign.center),
          backgroundColor: Color(0xffDAA438),
          toolbarHeight: 80,
        ),
        body: SafeArea(
            child: Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    margin: EdgeInsets.fromLTRB(0, height * 0.08, 0, 0),
                    child: GridView.builder(
                      itemCount: 30,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Juz(juzIndex: index + 1),
                            ),
                          ),
                          child: Card(
                            color: Color(0xffDAA438),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(color: Color(0xffDAA438), width: 1),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "${index + 1}",
                                style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ]
            )
        )
    );
  }
}