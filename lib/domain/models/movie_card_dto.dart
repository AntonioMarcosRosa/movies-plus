import 'dart:convert';

class MovieCardDto {
  int id;
  String? posterPath;
  String? title;

  MovieCardDto({
    this.id = 0,
    this.posterPath,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'poster_path': posterPath,
      'title': title,
    }..removeWhere((key, value) => value == null);
  }

  String toJson() => json.encode(toMap());

  factory MovieCardDto.fromMap(Map<String, dynamic> map) {
    return MovieCardDto(
      id: map['id'] ?? 0,
      posterPath: map['poster_path'] as String?,
      title: map['title'] as String?,
    );
  }

  factory MovieCardDto.fromJson(String source) =>
      MovieCardDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
