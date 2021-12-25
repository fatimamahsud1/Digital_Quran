import 'dart:convert';

import 'package:digital_quran/SearchModel/Searchjuzz/JuzzList.dart';
import 'package:digital_quran/SearchModel/SearchSurah/SurahsList.dart';
import 'package:http/http.dart' as http;

class QuranAPI {

  static Future<SurahsList> getSurahList() async {
    String url = "http://api.alquran.cloud/v1/quran/quran-uthmani";

    http.Response response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
        'surahList';
        SurahsList.fromJSON(
          json.decode(response.body),
        );


      return SurahsList.fromJSON(json.decode(response.body));
    } else {
      throw Exception("Failed  to Load Post");
    }
  }
/*
  static Future<SajdaList> getSajda() async {
    String url = "http://api.alquran.cloud/v1/sajda/quran-uthmani";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // cache in Hive
      await _hiveBox.put(
        'sajdaList',
        SajdaList.fromJSON(
          json.decode(response.body),
        ),
      );

      return SajdaList.fromJSON(json.decode(response.body));
    } else {
      throw Exception("Failed  to Load Post");
    }
  }

*/

    static Future<JuzList> getJuzz(int? index) async {
    String url = "http://api.alquran.cloud/v1/juz/$index/quran-uthmani";

    final response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {


      return JuzList.fromJSON(json.decode(response.body));
    } else {
      throw Exception("Failed  to Load Post");
    }
  }
}