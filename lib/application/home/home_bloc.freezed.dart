// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  bool? get refresh => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? refresh) loadHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? refresh)? loadHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? refresh)? loadHomeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHomeData value) loadHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadHomeData value)? loadHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHomeData value)? loadHomeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({bool? refresh});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object? refresh = freezed,
  }) {
    return _then(_value.copyWith(
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class $LoadHomeDataCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $LoadHomeDataCopyWith(
          LoadHomeData value, $Res Function(LoadHomeData) then) =
      _$LoadHomeDataCopyWithImpl<$Res>;
  @override
  $Res call({bool? refresh});
}

/// @nodoc
class _$LoadHomeDataCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadHomeDataCopyWith<$Res> {
  _$LoadHomeDataCopyWithImpl(
      LoadHomeData _value, $Res Function(LoadHomeData) _then)
      : super(_value, (v) => _then(v as LoadHomeData));

  @override
  LoadHomeData get _value => super._value as LoadHomeData;

  @override
  $Res call({
    Object? refresh = freezed,
  }) {
    return _then(LoadHomeData(
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadHomeData implements LoadHomeData {
  const _$LoadHomeData({this.refresh});

  @override
  final bool? refresh;

  @override
  String toString() {
    return 'HomeEvent.loadHomeData(refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadHomeData &&
            const DeepCollectionEquality().equals(other.refresh, refresh));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(refresh));

  @JsonKey(ignore: true)
  @override
  $LoadHomeDataCopyWith<LoadHomeData> get copyWith =>
      _$LoadHomeDataCopyWithImpl<LoadHomeData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? refresh) loadHomeData,
  }) {
    return loadHomeData(refresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? refresh)? loadHomeData,
  }) {
    return loadHomeData?.call(refresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? refresh)? loadHomeData,
    required TResult orElse(),
  }) {
    if (loadHomeData != null) {
      return loadHomeData(refresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHomeData value) loadHomeData,
  }) {
    return loadHomeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadHomeData value)? loadHomeData,
  }) {
    return loadHomeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHomeData value)? loadHomeData,
    required TResult orElse(),
  }) {
    if (loadHomeData != null) {
      return loadHomeData(this);
    }
    return orElse();
  }
}

abstract class LoadHomeData implements HomeEvent {
  const factory LoadHomeData({final bool? refresh}) = _$LoadHomeData;

  @override
  bool? get refresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadHomeDataCopyWith<LoadHomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  String get stateId => throw _privateConstructorUsedError;
  List<HotAndNewData> get pastYearList => throw _privateConstructorUsedError;
  List<HotAndNewData> get trendingNowList => throw _privateConstructorUsedError;
  List<HotAndNewData> get top10TVShowList => throw _privateConstructorUsedError;
  List<HotAndNewData> get tenseDramaList => throw _privateConstructorUsedError;
  List<HotAndNewData> get southIndianMovieList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {String stateId,
      List<HotAndNewData> pastYearList,
      List<HotAndNewData> trendingNowList,
      List<HotAndNewData> top10TVShowList,
      List<HotAndNewData> tenseDramaList,
      List<HotAndNewData> southIndianMovieList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? stateId = freezed,
    Object? pastYearList = freezed,
    Object? trendingNowList = freezed,
    Object? top10TVShowList = freezed,
    Object? tenseDramaList = freezed,
    Object? southIndianMovieList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearList: pastYearList == freezed
          ? _value.pastYearList
          : pastYearList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingNowList: trendingNowList == freezed
          ? _value.trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      top10TVShowList: top10TVShowList == freezed
          ? _value.top10TVShowList
          : top10TVShowList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      tenseDramaList: tenseDramaList == freezed
          ? _value.tenseDramaList
          : tenseDramaList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndianMovieList: southIndianMovieList == freezed
          ? _value.southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stateId,
      List<HotAndNewData> pastYearList,
      List<HotAndNewData> trendingNowList,
      List<HotAndNewData> top10TVShowList,
      List<HotAndNewData> tenseDramaList,
      List<HotAndNewData> southIndianMovieList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? stateId = freezed,
    Object? pastYearList = freezed,
    Object? trendingNowList = freezed,
    Object? top10TVShowList = freezed,
    Object? tenseDramaList = freezed,
    Object? southIndianMovieList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_Initial(
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearList: pastYearList == freezed
          ? _value.pastYearList
          : pastYearList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingNowList: trendingNowList == freezed
          ? _value.trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      top10TVShowList: top10TVShowList == freezed
          ? _value.top10TVShowList
          : top10TVShowList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      tenseDramaList: tenseDramaList == freezed
          ? _value.tenseDramaList
          : tenseDramaList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndianMovieList: southIndianMovieList == freezed
          ? _value.southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.stateId,
      required final List<HotAndNewData> pastYearList,
      required final List<HotAndNewData> trendingNowList,
      required final List<HotAndNewData> top10TVShowList,
      required final List<HotAndNewData> tenseDramaList,
      required final List<HotAndNewData> southIndianMovieList,
      required this.isLoading,
      required this.hasError})
      : _pastYearList = pastYearList,
        _trendingNowList = trendingNowList,
        _top10TVShowList = top10TVShowList,
        _tenseDramaList = tenseDramaList,
        _southIndianMovieList = southIndianMovieList;

  @override
  final String stateId;
  final List<HotAndNewData> _pastYearList;
  @override
  List<HotAndNewData> get pastYearList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastYearList);
  }

  final List<HotAndNewData> _trendingNowList;
  @override
  List<HotAndNewData> get trendingNowList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingNowList);
  }

  final List<HotAndNewData> _top10TVShowList;
  @override
  List<HotAndNewData> get top10TVShowList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_top10TVShowList);
  }

  final List<HotAndNewData> _tenseDramaList;
  @override
  List<HotAndNewData> get tenseDramaList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDramaList);
  }

  final List<HotAndNewData> _southIndianMovieList;
  @override
  List<HotAndNewData> get southIndianMovieList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southIndianMovieList);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomeState(stateId: $stateId, pastYearList: $pastYearList, trendingNowList: $trendingNowList, top10TVShowList: $top10TVShowList, tenseDramaList: $tenseDramaList, southIndianMovieList: $southIndianMovieList, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality()
                .equals(other.pastYearList, pastYearList) &&
            const DeepCollectionEquality()
                .equals(other.trendingNowList, trendingNowList) &&
            const DeepCollectionEquality()
                .equals(other.top10TVShowList, top10TVShowList) &&
            const DeepCollectionEquality()
                .equals(other.tenseDramaList, tenseDramaList) &&
            const DeepCollectionEquality()
                .equals(other.southIndianMovieList, southIndianMovieList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateId),
      const DeepCollectionEquality().hash(pastYearList),
      const DeepCollectionEquality().hash(trendingNowList),
      const DeepCollectionEquality().hash(top10TVShowList),
      const DeepCollectionEquality().hash(tenseDramaList),
      const DeepCollectionEquality().hash(southIndianMovieList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final String stateId,
      required final List<HotAndNewData> pastYearList,
      required final List<HotAndNewData> trendingNowList,
      required final List<HotAndNewData> top10TVShowList,
      required final List<HotAndNewData> tenseDramaList,
      required final List<HotAndNewData> southIndianMovieList,
      required final bool isLoading,
      required final bool hasError}) = _$_Initial;

  @override
  String get stateId => throw _privateConstructorUsedError;
  @override
  List<HotAndNewData> get pastYearList => throw _privateConstructorUsedError;
  @override
  List<HotAndNewData> get trendingNowList => throw _privateConstructorUsedError;
  @override
  List<HotAndNewData> get top10TVShowList => throw _privateConstructorUsedError;
  @override
  List<HotAndNewData> get tenseDramaList => throw _privateConstructorUsedError;
  @override
  List<HotAndNewData> get southIndianMovieList =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get hasError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
