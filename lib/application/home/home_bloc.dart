import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/hot_and_new/hot_and_new_service.dart';
import 'package:netflix_clone/domain/hot_and_new/model/hot_and_new_resp.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HotAndNewService _hotAndNewService) : super(HomeState.initial()) {
    on<LoadHomeData>((event, emit) async {
      // Block unwanted refresh
      if (state.pastYearList.isNotEmpty && event.refresh != true) {
        return emit(state);
      }

      // Loading
      emit(state.copyWith(isLoading: true));

      // Get data from api
      final _movieList = await _hotAndNewService.getHotAndNewMovieData();
      final _tVList = await _hotAndNewService.getHotAndNewTVData();

      // Movie state
      final _movieState = _movieList.fold(
        (MainFailure fail) {
          return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearList: [],
            trendingNowList: [],
            top10TVShowList: [],
            tenseDramaList: [],
            southIndianMovieList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HotAndNewResponse resp) {
          final List<HotAndNewData> _pastYearMovies = resp.results;
          final List<HotAndNewData> _trendingNowMovies = resp.results;
          final List<HotAndNewData> _tenseDramaMovies = resp.results;
          final List<HotAndNewData> _southIndianMovies = resp.results;

          _pastYearMovies.shuffle();
          _trendingNowMovies.shuffle();
          _tenseDramaMovies.shuffle();
          _southIndianMovies.shuffle();

          return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearList: _pastYearMovies,
            trendingNowList: _trendingNowMovies,
            top10TVShowList: state.top10TVShowList,
            tenseDramaList: _tenseDramaMovies,
            southIndianMovieList: _southIndianMovies,
            isLoading: false,
            hasError: false,
          );
        },
      );

      log(_movieState.pastYearList[0].originalTitle.toString());
      log(_movieState.trendingNowList[0].originalTitle.toString());
      log(_movieState.tenseDramaList[0].originalTitle.toString());
      log(_movieState.southIndianMovieList[0].originalTitle.toString());

      // save movie state
      emit(_movieState);

      // TV Shows state
      final _tvState = _tVList.fold(
        (MainFailure fail) {
          return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearList: [],
            trendingNowList: [],
            top10TVShowList: [],
            tenseDramaList: [],
            southIndianMovieList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HotAndNewResponse resp) {
          final _top10TVShows = resp.results;
          _top10TVShows.shuffle();
          return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            pastYearList: state.pastYearList,
            trendingNowList: state.trendingNowList,
            top10TVShowList: _top10TVShows,
            tenseDramaList: state.tenseDramaList,
            southIndianMovieList: state.southIndianMovieList,
            isLoading: false,
            hasError: false,
          );
        },
      );

      // Save tv state
      emit(_tvState);
    });
  }
}
