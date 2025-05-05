import 'package:flutter/material.dart';
import 'package:movies_plus/domain/models/movie_card_dto.dart';

class MoviesListCard extends StatelessWidget {
  final MovieCardDto movie;

  const MoviesListCard({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    final moviePosterPath =
        'https://image.tmdb.org/t/p/original${movie.posterPath}';
    return GestureDetector(
      onTap: null,
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(moviePosterPath), fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
