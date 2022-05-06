part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.loadTopSearch({
    bool? refresh,
  }) = LoadTopSearch;
  const factory SearchEvent.searchMovie({
    required String movieQuery,
  }) = SearchMovie;
}
