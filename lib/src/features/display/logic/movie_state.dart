// import 'package:freezed_annotation/freezed_annotation.dart';




 part of 'movie_cubit.dart';

 @freezed

class MovieState with _$MovieState {
  const factory MovieState.initial() = _Initial;
  const factory MovieState.loading() = _Loading;
  const factory MovieState.loaded({required List<Movie> movies}) = _Loaded;
  const factory MovieState.error({required String message}) = _Error;
}
