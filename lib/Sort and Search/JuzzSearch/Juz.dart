import 'package:digital_quran/SearchModel/Searchjuzz/JuzzList.dart';
import 'package:digital_quran/SearchModel/Searchjuzz/SearchJuzz.dart';
import 'package:flutter/material.dart';
import 'package:digital_quran/ApiController/QuranAPI.dart';
import 'JuzIndex.dart';
import 'package:hive_flutter/adapters.dart';




class Juz extends StatefulWidget {
  final int? juzIndex;
  const Juz({Key? key, this.juzIndex}) : super(key: key);

  @override
  State<Juz> createState() => _JuzState();
}

class _JuzState extends State<Juz> {
  List<JuzAyahs>? _juzAyahs = [];

  @override
  void initState() {
    _getJuzData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff40010A),
      appBar: AppBar(
        title: Text(
            'Juzz Ayahs',
            style: TextStyle(fontWeight: FontWeight.w900,
                color: Color(0xff40010A),
                fontSize: 42),
            textAlign: TextAlign.center),
        backgroundColor: Color(0xffDAA438),
        toolbarHeight: 80,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
        <Widget>[

        ],
        body: _juzAyahs!.isEmpty
            ? const Center(
          child: Text(
             'Juz ayahs \n Loading...',
            style: TextStyle(
            color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 22
            )
          )
        )
            : JuzAyahsBuilder(
          juzAyahs: _juzAyahs,
          juzIndex: widget.juzIndex,
        ),
      ),
    );
  }

  // getting data
 Future<void> _getJuzData() async {
   JuzList _juzz = new JuzList();

    if (_juzz.juzAyahs == null ) {
      JuzList _newJuzList = await QuranAPI.getJuzz(widget.juzIndex);

    } else {
      if (mounted) {
        setState(() => _juzAyahs = _juzz.juzAyahs);
      }
    }
  }
}

class JuzAyahsBuilder extends StatelessWidget {
  final List<JuzAyahs>? juzAyahs;
  final int? juzIndex;
  const JuzAyahsBuilder({
    Key? key,
    required this.juzAyahs,
    required this.juzIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: juzAyahs!.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text(juzAyahs![index].ayahsText ?? '',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    color: Colors.black)),
            trailing: CircleAvatar(
              radius: MediaQuery.of(context).size.height * 0.018,
              backgroundColor: const Color(0xff04364f),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.017,
                backgroundColor: Colors.white,
                child: Text(
                  juzAyahs![index].ayahNumber.toString(),
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.0135,
                  ),
                ),
              ),
            ),
          );
      },
    );
  }
}




