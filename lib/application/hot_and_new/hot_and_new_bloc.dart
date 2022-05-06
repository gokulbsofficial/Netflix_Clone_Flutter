import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/hot_and_new/hot_and_new_service.dart';
import 'package:netflix_clone/domain/hot_and_new/model/hot_and_new_resp.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  HotAndNewBloc(HotAndNewService _hotAndNewService)
      : super(HotAndNewState.initial()) {
    on<LoadDataInComingSoon>((event, emit) async {
      // Already data present then emit state
      if (state.comingsoonList.isNotEmpty && event.refresh == false) {
        emit(state);
        return;
      }

      //  Loading
      emit(state.copyWith(isLoading: true));

      // Get Data
      final _result = await _hotAndNewService.getHotAndNewMovieData();

      final _state = _result.fold((MainFailure f) {
        return const HotAndNewState(
          comingsoonList: [],
          everyoneWatchingList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResponse resp) {
        return HotAndNewState(
          comingsoonList: resp.results,
          everyoneWatchingList: state.everyoneWatchingList,
          isLoading: false,
          hasError: false,
        );
      });

      // Update state
      emit(_state);
    });

    on<LoadDataInEveryoneIsWatching>((event, emit) async {
      // Already data present then emit state
      if (state.everyoneWatchingList.isNotEmpty && event.refresh != true) {
        return emit(state);
      }

      //  Loading
      emit(state.copyWith(isLoading: true));

      // Get Data
      final _result = await _hotAndNewService.getHotAndNewTVData();

      final _state = _result.fold((MainFailure f) {
        return const HotAndNewState(
          comingsoonList: [],
          everyoneWatchingList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResponse resp) {
        return HotAndNewState(
          comingsoonList: state.comingsoonList,
          everyoneWatchingList: resp.results,
          isLoading: false,
          hasError: false,
        );
      });
      // Update state
      emit(_state);
    });
  }
}
