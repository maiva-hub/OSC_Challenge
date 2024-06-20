import 'dart:convert';

import '../../../exceptions/exceptions.dart';
import '../model/movie_model.dart';
import 'package:http/http.dart' as http;

class MovieRepository {
  final String _apiKey = 'a985fcf8dcc3142bef97bdd19d65dcb5';
  final String _apiUrl = 'https://api.themoviedb.org/3';

   MovieRepository();
   
  Future<List<Movie>> fetchMovies() async {
    try {
     
      final response =
          await http.get(Uri.parse('$_apiUrl/movie/popular?api_key=$_apiKey'));

      if (response.statusCode == 200) {
        try {
          final data = jsonDecode(response.body);
          print(data);
          return (data['results'] as List)
              .map((movie) => Movie.fromJson(movie))
              .toList();
        } catch (e) {
          throw JsonParsingException('Failed to parse JSON: $e');
        }
      } else {
        throw HttpException('Failed to load movies: ${response.reasonPhrase}');
      }
    } catch (e) {
    
      if (e is HttpException || e is JsonParsingException) {
        throw e;
        
      } else {
        throw NetworkException('Failed to load movies: $e');
      }
    }
  }
}
