import 'dart:convert';
import 'package:digital_quran/Sort and Search/SurahSearch/SurahIndex.dart';
import 'package:flutter/material.dart';
import 'package:digital_quran/ApiController/QuranAPI.dart';
import 'package:digital_quran/SearchModel/SearchAyat/Ayat.dart';


class Surah {

  final int? number;

  final String? name;

  final String? englishName;
  final String? englishNameTranslation;
  final String? revelationType;
  final List<Ayat>? ayahs;

  Surah({
    this.number,
    this.name,
    this.englishName,
    this.englishNameTranslation,
    this.revelationType,
    this.ayahs,
  });

  factory Surah.fromJSON(Map<String, dynamic> json) {
    Iterable ayahs = json['ayahs'];
    List<Ayat> ayahsList = ayahs.map((e) => Ayat.fromJSON((e))).toList();

    return Surah(
        name: json['name'],
        number: json['number'],
        englishName: json['englishName'],
        revelationType: json['revelationType'],
        englishNameTranslation: json['englishNameTranslation'],
        ayahs: ayahsList);
  }

  Surah copyWith({
    int? number,
    String? name,
    String? englishName,
    String? englishNameTranslation,
    String? revelationType,
    List<Ayat>? ayahs,
  }) {
    return Surah(
      number: number ?? this.number,
      name: name ?? this.name,
      englishName: englishName ?? this.englishName,
      englishNameTranslation:
      englishNameTranslation ?? this.englishNameTranslation,
      revelationType: revelationType ?? this.revelationType,
      ayahs: ayahs ?? this.ayahs,
    );
  }

  Surah merge(Surah model) {
    return Surah(
      number: model.number ?? number,
      name: model.name ?? name,
      englishName: model.englishName ?? englishName,
      englishNameTranslation:
      model.englishNameTranslation ?? englishNameTranslation,
      revelationType: model.revelationType ?? revelationType,
      ayahs: model.ayahs ?? ayahs,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'number': number,
      'name': name,
      'englishName': englishName,
      'englishNameTranslation': englishNameTranslation,
      'revelationType': revelationType,
      'ayahs': ayahs?.map((x) => x.toMap()).toList(),
    };
  }

  factory Surah.fromMap(Map<String, dynamic> map) {
    return Surah(
      number: map['number'],
      name: map['name'],
      englishName: map['englishName'],
      englishNameTranslation: map['englishNameTranslation'],
      revelationType: map['revelationType'],
      ayahs: List<Ayat>.from(map['ayahs']?.map((x) => Ayat?.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Surah.fromJson(String source) => Surah.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Surah(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, revelationType: $revelationType, ayahs: $ayahs)';
  }
}