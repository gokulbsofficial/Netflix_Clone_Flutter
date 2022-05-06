part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<HotAndNewData> pastYearList,
    required List<HotAndNewData> trendingNowList,
    required List<HotAndNewData> top10TVShowList,
    required List<HotAndNewData> tenseDramaList,
    required List<HotAndNewData> southIndianMovieList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        stateId: '0',
        pastYearList: [],
        trendingNowList: [],
        top10TVShowList: [],
        tenseDramaList: [],
        southIndianMovieList: [],
        isLoading: false,
        hasError: false,
      );
}
