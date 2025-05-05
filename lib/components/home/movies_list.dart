import 'package:flutter/material.dart';
import 'package:movies_plus/components/home/movies_list_card.dart';
import 'package:movies_plus/domain/models/movie_card_dto.dart';

class MoviesList extends StatelessWidget {
  final List<MovieCardDto> movies;

  const MoviesList({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pupular Movie',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 190,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              separatorBuilder: (context, index) => const SizedBox(
                width: 8,
              ),
              itemBuilder: (context, index) {
                return MoviesListCard(movie: movies[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
