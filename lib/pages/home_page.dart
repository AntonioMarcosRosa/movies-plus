import 'package:flutter/material.dart';
import 'package:movies_plus/components/home/movies_list.dart';
import 'package:movies_plus/domain/models/movie_card_dto.dart';
import 'package:movies_plus/repository/movie_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MovieRepository movieRepository;
  List<MovieCardDto> movies = [];

  @override
  void initState() {
    movieRepository = MovieRepository();
    getMovies();
    super.initState();
  }

  Future<void> getMovies() async {
    final moviesDb = await movieRepository.getMoviesDb();
    if (moviesDb.isNotEmpty) {
      setState(() {
        movies = moviesDb;
      });
    }

    final moviesApi = await movieRepository.getMovies();
    if (moviesApi.isNotEmpty) {
      setState(() {
        movies = moviesApi;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Image.asset(
            'assets/images/prey.jpg',
            height: size.height * .50,
            width: size.width,
            fit: BoxFit.cover,
          ),
          MoviesList(movies: movies)
          // FutureBuilder(
          //   future: MovieRepository().getMovies(),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.waiting) {}
          //     final movies = snapshot.data;
          //     return MoviesList(
          //       movies: movies ?? [],
          //     );
          //   },
          // )
        ],
      ),
    );
  }
}
