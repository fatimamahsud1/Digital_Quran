

class JuzAyahs {
  final String? ayahsText;
  final int? ayahNumber;
  final String? surahName;

  JuzAyahs({this.ayahsText, this.surahName, this.ayahNumber});

  factory JuzAyahs.fromJSON(Map<String, dynamic> json) {
    return JuzAyahs(
      ayahNumber: json['number'],
      ayahsText: json['text'],
      surahName: json['surah']['name'],
    );
  }
}