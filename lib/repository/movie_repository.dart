import 'dart:async';

import 'package:dio/dio.dart';
import 'package:movies_plus/app_config.dart';
import 'package:movies_plus/domain/models/movie_card_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MovieRepository {
  final Dio client = Dio(
    BaseOptions(baseUrl: AppConfig.instance.baseUrl, headers: {
      'Authorization': 'Bearer ${AppConfig.instance.apiToken}',
      'accept': 'application/json',
    }, queryParameters: {
      'language': 'pt-BR',
    }),
  );

  SharedPreferences? _preferences;
  final String moviesKey = 'movies';

  FutureOr<SharedPreferences> get db async {
    _preferences ??= await SharedPreferences.getInstance();
    return _preferences!;
  }

  Future<List<MovieCardDto>> getMovies() async {
    final response = await client.get(
      '/discover/movie',
      queryParameters: {
        'page': 1,
      },
    );

    final movies = (response.data['results'] as List)
        .map((movie) => MovieCardDto.fromMap(movie))
        .toList();

    final storage = await db;

    storage.setStringList(moviesKey, movies.map((m) => m.toJson()).toList());
    return movies;
  }

  Future<List<MovieCardDto>> getMoviesDb() async {
    final storage = await db;

    final movies = storage.getStringList(moviesKey);

    if (movies == null || movies.isEmpty) {
      return [];
    }

    return movies.map((m) => MovieCardDto.fromJson(m)).toList();
  }
}
