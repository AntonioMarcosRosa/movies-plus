// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MovieModel {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  MovieModel({
    this.adult = true,
    this.backdropPath,
    this.genreIds,
    this.id = 0,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity = 0.0,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video = true,
    this.voteAverage = 0.0,
    this.voteCount = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': genreIds,
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    }..removeWhere((key, value) => value == null);
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      adult: map['adult'] as bool?,
      backdropPath: map['backdrop_path'] as String?,
      genreIds:
          map['genre_ids'] != null ? List<int>.from(map['genre_ids']) : null,
      id: map['id'] ?? 0,
      originalLanguage: map['original_language'] as String?,
      originalTitle: map['original_title'] as String?,
      overview: map['overview'] as String?,
      popularity: (map['popularity'] is int)
          ? (map['popularity'] as int).toDouble()
          : map['popularity'] as double?,
      posterPath: map['poster_path'] as String?,
      releaseDate: map['release_date'] as String?,
      title: map['title'] as String?,
      video: map['video'] as bool?,
      voteAverage: (map['vote_average'] is int)
          ? (map['vote_average'] as int).toDouble()
          : map['vote_average'] as double?,
      voteCount: map['vote_count'] as int?,
    );
  }

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
