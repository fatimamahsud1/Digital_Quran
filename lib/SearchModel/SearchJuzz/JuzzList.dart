import 'SearchJuzz.dart';


class  JuzList {
  final int? juzNumber;

  final List<JuzAyahs>? juzAyahs;

  JuzList({this.juzAyahs, this.juzNumber});

   factory  JuzList.fromJSON(Map<String, dynamic> json) {
    Iterable juzAyahs = json['data']['ayahs'];
    List<JuzAyahs> juzAyahsList =
    juzAyahs.map((e) => JuzAyahs.fromJSON(e)).toList();

    return JuzList(juzAyahs: juzAyahsList, juzNumber: json['data']['number']);
  }
}