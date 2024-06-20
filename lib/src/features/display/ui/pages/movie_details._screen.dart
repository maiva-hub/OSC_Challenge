import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../model/movie_model.dart';

@RoutePage()
class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network('https://image.tmdb.org/t/p/w500${movie.posterPath}'),
              ),
              SizedBox(height: 16),
              Text(
                movie.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Rating: ${movie.voteAverage} / 10',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Release Date: ${movie.releaseDate}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                movie.overview,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




