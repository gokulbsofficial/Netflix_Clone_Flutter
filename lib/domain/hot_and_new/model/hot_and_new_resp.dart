import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_clone/core/strings.dart';

part 'hot_and_new_resp.g.dart';

@JsonSerializable()
class HotAndNewResponse {
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<HotAndNewData> results;

  HotAndNewResponse({this.page, this.results = const []});

  factory HotAndNewResponse.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewResponseToJson(this);
}

@JsonSerializable()
class HotAndNewData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

// in case of tv series, use original_name instead of original_title
  @JsonKey(name: 'original_name')
  String? originalName;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  // in case of tv series, use first_air_date instead of release_date
  @JsonKey(name: 'first_air_date')
  String? firstAirDate;

  @JsonKey(name: 'title')
  String? title;

  // in case of tv series, use name instead of title
  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'video')
  bool? video;

  String get posterPathURL => '$kImageBaseURL$posterPath';

  String get backdropPathURL => '$kImageBaseURL$backdropPath';

  HotAndNewData({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.originalName,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.firstAirDate,
    this.title,
    this.name,
    this.video,
  });

  factory HotAndNewData.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewDataToJson(this);
}
