import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:osc_challenge/src/features/display/repository/movie_repository.dart';

import '../../../exceptions/exceptions.dart';
import '../model/movie_model.dart';

part 'movie_state.dart';
part 'movie_cubit.freezed.dart';

class MovieCubit extends Cubit<MovieState> {
  final MovieRepository movieRepository;
  MovieCubit(this.movieRepository) : super(MovieState.initial());

  Future<void> getMovies() async {
    try {
      emit(MovieState.loading());
      final movies = await movieRepository.fetchMovies();
      emit(MovieState.loaded(movies: movies));
    } 
    on NetworkException catch (e) {
      emit(MovieState.error(message: 'Failed to fetch movies: ${e.toString()}'));
    } on HttpException catch (e) {
      emit(MovieState.error(message: 'Failed to fetch movies: ${e.toString()}'));
    } on JsonParsingException catch (e) {
      emit(MovieState.error(message: 'Failed to fetch movies: ${e.toString()}'));
    }catch (e) {
      emit(MovieState.error(message: 'Failed to fetch movies: ${e.toString()}'));
     
    }
  }
}



