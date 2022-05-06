part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required List<HotAndNewData> comingsoonList,
    required List<HotAndNewData> everyoneWatchingList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HotAndNewState.initial() => const HotAndNewState(
        comingsoonList: [],
        everyoneWatchingList: [],
        isLoading: false,
        hasError: false,
      );
}
