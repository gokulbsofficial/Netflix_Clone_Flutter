// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hot_and_new_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotAndNewEvent {
  bool? get refresh => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? refresh) loadDataInComingSoon,
    required TResult Function(bool? refresh) loadDataInEveryoneIsWatching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? refresh)? loadDataInComingSoon,
    TResult Function(bool? refresh)? loadDataInEveryoneIsWatching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? refresh)? loadDataInComingSoon,
    TResult Function(bool? refresh)? loadDataInEveryoneIsWatching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInComingSoon value) loadDataInComingSoon,
    required TResult Function(LoadDataInEveryoneIsWatching value)
        loadDataInEveryoneIsWatching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadDataInComingSoon value)? loadDataInComingSoon,
    TResult Function(LoadDataInEveryoneIsWatching value)?
        loadDataInEveryoneIsWatching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInComingSoon value)? loadDataInComingSoon,
    TResult Function(LoadDataInEveryoneIsWatching value)?
        loadDataInEveryoneIsWatching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotAndNewEventCopyWith<HotAndNewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotAndNewEventCopyWith<$Res> {
  factory $HotAndNewEventCopyWith(
          HotAndNewEvent value, $Res Function(HotAndNewEvent) then) =
      _$HotAndNewEventCopyWithImpl<$Res>;
  $Res call({bool? refresh});
}

/// @nodoc
class _$HotAndNewEventCopyWithImpl<$Res>
    implements $HotAndNewEventCopyWith<$Res> {
  _$HotAndNewEventCopyWithImpl(this._value, this._then);

  final HotAndNewEvent _value;
  // ignore: unused_field
  final $Res Function(HotAndNewEvent) _then;

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
abstract class $LoadDataInComingSoonCopyWith<$Res>
    implements $HotAndNewEventCopyWith<$Res> {
  factory $LoadDataInComingSoonCopyWith(LoadDataInComingSoon value,
          $Res Function(LoadDataInComingSoon) then) =
      _$LoadDataInComingSoonCopyWithImpl<$Res>;
  @override
  $Res call({bool? refresh});
}

/// @nodoc
class _$LoadDataInComingSoonCopyWithImpl<$Res>
    extends _$HotAndNewEventCopyWithImpl<$Res>
    implements $LoadDataInComingSoonCopyWith<$Res> {
  _$LoadDataInComingSoonCopyWithImpl(
      LoadDataInComingSoon _value, $Res Function(LoadDataInComingSoon) _then)
      : super(_value, (v) => _then(v as LoadDataInComingSoon));

  @override
  LoadDataInComingSoon get _value => super._value as LoadDataInComingSoon;

  @override
  $Res call({
    Object? refresh = freezed,
  }) {
    return _then(LoadDataInComingSoon(
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadDataInComingSoon implements LoadDataInComingSoon {
  const _$LoadDataInComingSoon({this.refresh});

  @override
  final bool? refresh;

  @override
  String toString() {
    return 'HotAndNewEvent.loadDataInComingSoon(refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadDataInComingSoon &&
            const DeepCollectionEquality().equals(other.refresh, refresh));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(refresh));

  @JsonKey(ignore: true)
  @override
  $LoadDataInComingSoonCopyWith<LoadDataInComingSoon> get copyWith =>
      _$LoadDataInComingSoonCopyWithImpl<LoadDataInComingSoon>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? refresh) loadDataInComingSoon,
    required TResult Function(bool? refresh) loadDataInEveryoneIsWatching,
  }) {
    return loadDataInComingSoon(refresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? refresh)? loadDataInComingSoon,
    TResult Function(bool? refresh)? loadDataInEveryoneIsWatching,
  }) {
    return loadDataInComingSoon?.call(refresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? refresh)? loadDataInComingSoon,
    TResult Function(bool? refresh)? loadDataInEveryoneIsWatching,
    required TResult orElse(),
  }) {
    if (loadDataInComingSoon != null) {
      return loadDataInComingSoon(refresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInComingSoon value) loadDataInComingSoon,
    required TResult Function(LoadDataInEveryoneIsWatching value)
        loadDataInEveryoneIsWatching,
  }) {
    return loadDataInComingSoon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadDataInComingSoon value)? loadDataInComingSoon,
    TResult Function(LoadDataInEveryoneIsWatching value)?
        loadDataInEveryoneIsWatching,
  }) {
    return loadDataInComingSoon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInComingSoon value)? loadDataInComingSoon,
    TResult Function(LoadDataInEveryoneIsWatching value)?
        loadDataInEveryoneIsWatching,
    required TResult orElse(),
  }) {
    if (loadDataInComingSoon != null) {
      return loadDataInComingSoon(this);
    }
    return orElse();
  }
}

abstract class LoadDataInComingSoon implements HotAndNewEvent {
  const factory LoadDataInComingSoon({final bool? refresh}) =
      _$LoadDataInComingSoon;

  @override
  bool? get refresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadDataInComingSoonCopyWith<LoadDataInComingSoon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadDataInEveryoneIsWatchingCopyWith<$Res>
    implements $HotAndNewEventCopyWith<$Res> {
  factory $LoadDataInEveryoneIsWatchingCopyWith(
          LoadDataInEveryoneIsWatching value,
          $Res Function(LoadDataInEveryoneIsWatching) then) =
      _$LoadDataInEveryoneIsWatchingCopyWithImpl<$Res>;
  @override
  $Res call({bool? refresh});
}

/// @nodoc
class _$LoadDataInEveryoneIsWatchingCopyWithImpl<$Res>
    extends _$HotAndNewEventCopyWithImpl<$Res>
    implements $LoadDataInEveryoneIsWatchingCopyWith<$Res> {
  _$LoadDataInEveryoneIsWatchingCopyWithImpl(
      LoadDataInEveryoneIsWatching _value,
      $Res Function(LoadDataInEveryoneIsWatching) _then)
      : super(_value, (v) => _then(v as LoadDataInEveryoneIsWatching));

  @override
  LoadDataInEveryoneIsWatching get _value =>
      super._value as LoadDataInEveryoneIsWatching;

  @override
  $Res call({
    Object? refresh = freezed,
  }) {
    return _then(LoadDataInEveryoneIsWatching(
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadDataInEveryoneIsWatching implements LoadDataInEveryoneIsWatching {
  const _$LoadDataInEveryoneIsWatching({this.refresh});

  @override
  final bool? refresh;

  @override
  String toString() {
    return 'HotAndNewEvent.loadDataInEveryoneIsWatching(refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadDataInEveryoneIsWatching &&
            const DeepCollectionEquality().equals(other.refresh, refresh));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(refresh));

  @JsonKey(ignore: true)
  @override
  $LoadDataInEveryoneIsWatchingCopyWith<LoadDataInEveryoneIsWatching>
      get copyWith => _$LoadDataInEveryoneIsWatchingCopyWithImpl<
          LoadDataInEveryoneIsWatching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? refresh) loadDataInComingSoon,
    required TResult Function(bool? refresh) loadDataInEveryoneIsWatching,
  }) {
    return loadDataInEveryoneIsWatching(refresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? refresh)? loadDataInComingSoon,
    TResult Function(bool? refresh)? loadDataInEveryoneIsWatching,
  }) {
    return loadDataInEveryoneIsWatching?.call(refresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? refresh)? loadDataInComingSoon,
    TResult Function(bool? refresh)? loadDataInEveryoneIsWatching,
    required TResult orElse(),
  }) {
    if (loadDataInEveryoneIsWatching != null) {
      return loadDataInEveryoneIsWatching(refresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInComingSoon value) loadDataInComingSoon,
    required TResult Function(LoadDataInEveryoneIsWatching value)
        loadDataInEveryoneIsWatching,
  }) {
    return loadDataInEveryoneIsWatching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadDataInComingSoon value)? loadDataInComingSoon,
    TResult Function(LoadDataInEveryoneIsWatching value)?
        loadDataInEveryoneIsWatching,
  }) {
    return loadDataInEveryoneIsWatching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInComingSoon value)? loadDataInComingSoon,
    TResult Function(LoadDataInEveryoneIsWatching value)?
        loadDataInEveryoneIsWatching,
    required TResult orElse(),
  }) {
    if (loadDataInEveryoneIsWatching != null) {
      return loadDataInEveryoneIsWatching(this);
    }
    return orElse();
  }
}

abstract class LoadDataInEveryoneIsWatching implements HotAndNewEvent {
  const factory LoadDataInEveryoneIsWatching({final bool? refresh}) =
      _$LoadDataInEveryoneIsWatching;

  @override
  bool? get refresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadDataInEveryoneIsWatchingCopyWith<LoadDataInEveryoneIsWatching>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HotAndNewState {
  List<HotAndNewData> get comingsoonList => throw _privateConstructorUsedError;
  List<HotAndNewData> get everyoneWatchingList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotAndNewStateCopyWith<HotAndNewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotAndNewStateCopyWith<$Res> {
  factory $HotAndNewStateCopyWith(
          HotAndNewState value, $Res Function(HotAndNewState) then) =
      _$HotAndNewStateCopyWithImpl<$Res>;
  $Res call(
      {List<HotAndNewData> comingsoonList,
      List<HotAndNewData> everyoneWatchingList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HotAndNewStateCopyWithImpl<$Res>
    implements $HotAndNewStateCopyWith<$Res> {
  _$HotAndNewStateCopyWithImpl(this._value, this._then);

  final HotAndNewState _value;
  // ignore: unused_field
  final $Res Function(HotAndNewState) _then;

  @override
  $Res call({
    Object? comingsoonList = freezed,
    Object? everyoneWatchingList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      comingsoonList: comingsoonList == freezed
          ? _value.comingsoonList
          : comingsoonList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      everyoneWatchingList: everyoneWatchingList == freezed
          ? _value.everyoneWatchingList
          : everyoneWatchingList // ignore: cast_nullable_to_non_nullable
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
abstract class _$InitialCopyWith<$Res>
    implements $HotAndNewStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<HotAndNewData> comingsoonList,
      List<HotAndNewData> everyoneWatchingList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HotAndNewStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? comingsoonList = freezed,
    Object? everyoneWatchingList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_Initial(
      comingsoonList: comingsoonList == freezed
          ? _value.comingsoonList
          : comingsoonList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      everyoneWatchingList: everyoneWatchingList == freezed
          ? _value.everyoneWatchingList
          : everyoneWatchingList // ignore: cast_nullable_to_non_nullable
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
      {required final List<HotAndNewData> comingsoonList,
      required final List<HotAndNewData> everyoneWatchingList,
      required this.isLoading,
      required this.hasError})
      : _comingsoonList = comingsoonList,
        _everyoneWatchingList = everyoneWatchingList;

  final List<HotAndNewData> _comingsoonList;
  @override
  List<HotAndNewData> get comingsoonList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comingsoonList);
  }

  final List<HotAndNewData> _everyoneWatchingList;
  @override
  List<HotAndNewData> get everyoneWatchingList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_everyoneWatchingList);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HotAndNewState(comingsoonList: $comingsoonList, everyoneWatchingList: $everyoneWatchingList, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.comingsoonList, comingsoonList) &&
            const DeepCollectionEquality()
                .equals(other.everyoneWatchingList, everyoneWatchingList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(comingsoonList),
      const DeepCollectionEquality().hash(everyoneWatchingList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements HotAndNewState {
  const factory _Initial(
      {required final List<HotAndNewData> comingsoonList,
      required final List<HotAndNewData> everyoneWatchingList,
      required final bool isLoading,
      required final bool hasError}) = _$_Initial;

  @override
  List<HotAndNewData> get comingsoonList => throw _privateConstructorUsedError;
  @override
  List<HotAndNewData> get everyoneWatchingList =>
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
