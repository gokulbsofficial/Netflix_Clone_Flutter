import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/movie/day?api_key=$apiKey";
  static const search = "$kBaseUrl/search/movie?api_key=$apiKey";
  static const hotAndNewMovie =
      '$kBaseUrl/discover/movie?api_key=$apiKey&page=1';
  static const hotAndNewTv = '$kBaseUrl/discover/tv?api_key=$apiKey&page=1';
}
