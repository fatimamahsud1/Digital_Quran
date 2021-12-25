import 'package:flutter/material.dart';
import 'package:digital_quran/ApiController/QuranAPI.dart';
import 'package:digital_quran/Sort and Search/SurahSearch/Surah.dart';
import 'package:digital_quran/Widget/Flare.dart';
import 'package:digital_quran/Widget/BackBtn.dart';
import 'package:digital_quran/SearchModel/SearchSurah/SurahsList.dart';

class SurahIndex extends StatefulWidget {
  const SurahIndex({Key? key}) : super(key: key);

  @override
  State<SurahIndex> createState() => _SurahIndexState();
}

class _SurahIndexState extends State<SurahIndex> {
  List<Surah>? _surahs = [];

  @override
  void initState() {
    _getSurahData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              _surahs!.isEmpty
                  ? const Center(
                child: Text(
                  "Surahs",
                ),
              )
                  : Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.22,
                ),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Color(0xffee8f8b),
                      height: 2.0,
                    );
                  },
                  itemCount: _surahs!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        onLongPress: () => _surahInforBox(index),
                        leading: Text(
                          "${_surahs![index].number}",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        title: Text(
                          "${_surahs![index].englishName}",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        subtitle:
                        Text("${_surahs![index].englishNameTranslation}"),
                        trailing: Text(
                          "${_surahs![index].name}",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      );
                  },
                ),
              ),
            ],
          ),
        ));
  }

  void _surahInforBox(int index) {
    showDialog(
      context: context,
      builder: (context) => SurahInformation(
        surahNumber: _surahs![index].number,
        arabicName: "${_surahs![index].name}",
        englishName: "${_surahs![index].englishName}",
        ayahs: _surahs![index].ayahs!.length,
        revelationType: "${_surahs![index].revelationType}",
        englishNameTranslation: "${_surahs![index].englishNameTranslation}",
      ),
    );
  }

  // getting data
  Future<void> _getSurahData() async {
    if (SurahsList == null) {
      SurahsList _newSurahsList = await QuranAPI.getSurahList();
      if (mounted) {
        setState(() {
        });
      }
    } else {
      if (mounted) {
        setState(() {
        });
      }
    }
  }
}

class SurahInformation extends StatefulWidget {
  final int? surahNumber;
  final String? arabicName;
  final String? englishName;
  final String? englishNameTranslation;
  final int? ayahs;
  final String? revelationType;

  const SurahInformation(
      {Key? key,
        this.arabicName,
        this.surahNumber,
        this.ayahs,
        this.englishName,
        this.englishNameTranslation,
        this.revelationType})
      : super(key: key);

  @override
  _SurahInformationState createState() => _SurahInformationState();
}

class _SurahInformationState extends State<SurahInformation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ScaleTransition(
      scale: scaleAnimation,
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
            width: width * 0.75,
            height: height * 0.37,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Surah Information",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.englishName!,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      widget.arabicName!,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
                Text("Ayahs: ${widget.ayahs}"),
                Text("Surah Number: ${widget.surahNumber}"),
                Text("Chapter: ${widget.revelationType}"),
                Text("Meaning: ${widget.englishNameTranslation}"),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: height * 0.05,
                  child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("OK")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}