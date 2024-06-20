import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osc_challenge/src/core/routing/app_router.dart';

import '../../logic/movie_cubit.dart';

@RoutePage()
class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  void initState() {
    context.read<MovieCubit>().getMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: colorScheme.onPrimary,
     
      bottom: const PreferredSize(preferredSize: Size.fromHeight(1.0),
      child: Divider(
        height:1.0,
        thickness: 0.5,
        color: Color.fromARGB(255, 121, 71, 71),
      ),),
        title: Text('Movie Streaming'),
        centerTitle: true,
      ),
      body: BlocBuilder<MovieCubit, MovieState>(builder: (context, state) {
        return state.when(
          initial: () => const Center(child: Text('Please wait...')),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (movies) =>
          ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return GestureDetector(
                  onTap: () {
                      context.pushRoute(MovieDetailRoute(movie: movie));
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            movie.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
            },
          ),
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<MovieCubit>().getMovies();
                  },
                  child: Text('Retry'),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}




