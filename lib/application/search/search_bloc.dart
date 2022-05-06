import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/domain/search/model/search_resp.dart';
import 'package:netflix_clone/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;
  SearchBloc(
    this._downloadsService,
    this._searchService,
  ) : super(SearchState.initial()) {
    // Idle state
    on<LoadTopSearch>((event, emit) async {
      // Already data present then emit state
      if (state.idleList.isNotEmpty && event.refresh != true) {
        emit(state);
        return;
      }

      //  Loading
      emit(
        const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );

      // Get trending
      final result = await _downloadsService.getDownloadImages();

      result.fold((MainFailure f) {
        emit(
          const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          ),
        );
      }, (List<Downloads> list) {
        emit(
          SearchState(
            searchResultList: [],
            idleList: list,
            isLoading: false,
            isError: false,
          ),
        );
      });
      // Show to ui
    });

    // Search state
    on<SearchMovie>((event, emit) async {
      //  Loading
      emit(
        const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      // Call search movie api
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      final _state = _result.fold((MainFailure failure) {
        return const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: false,
          isError: true,
        );
      }, (SearchResp r) {
        return SearchState(
          searchResultList: r.results,
          idleList: [],
          isLoading: false,
          isError: false,
        );
      });
      // Show to ui
      emit(_state);
    });
  }
}
