// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Downloads _$DownloadsFromJson(Map<String, dynamic> json) {
  return _Downloads.fromJson(json);
}

/// @nodoc
class _$DownloadsTearOff {
  const _$DownloadsTearOff();

  _Downloads call({@JsonKey(name: "poster_path") required String? posterPath}) {
    return _Downloads(
      posterPath: posterPath,
    );
  }

  Downloads fromJson(Map<String, Object?> json) {
    return Downloads.fromJson(json);
  }
}

/// @nodoc
const $Downloads = _$DownloadsTearOff();

/// @nodoc
mixin _$Downloads {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsCopyWith<Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsCopyWith<$Res> {
  factory $DownloadsCopyWith(Downloads value, $Res Function(Downloads) then) =
      _$DownloadsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$DownloadsCopyWithImpl<$Res> implements $DownloadsCopyWith<$Res> {
  _$DownloadsCopyWithImpl(this._value, this._then);

  final Downloads _value;
  // ignore: unused_field
  final $Res Function(Downloads) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DownloadsCopyWith<$Res> implements $DownloadsCopyWith<$Res> {
  factory _$DownloadsCopyWith(
          _Downloads value, $Res Function(_Downloads) then) =
      __$DownloadsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$DownloadsCopyWithImpl<$Res> extends _$DownloadsCopyWithImpl<$Res>
    implements _$DownloadsCopyWith<$Res> {
  __$DownloadsCopyWithImpl(_Downloads _value, $Res Function(_Downloads) _then)
      : super(_value, (v) => _then(v as _Downloads));

  @override
  _Downloads get _value => super._value as _Downloads;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_Downloads(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Downloads implements _Downloads {
  const _$_Downloads({@JsonKey(name: "poster_path") required this.posterPath});

  factory _$_Downloads.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadsFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'Downloads(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Downloads &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posterPath));

  @JsonKey(ignore: true)
  @override
  _$DownloadsCopyWith<_Downloads> get copyWith =>
      __$DownloadsCopyWithImpl<_Downloads>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadsToJson(this);
  }
}

abstract class _Downloads implements Downloads {
  const factory _Downloads(
          {@JsonKey(name: "poster_path") required String? posterPath}) =
      _$_Downloads;

  factory _Downloads.fromJson(Map<String, dynamic> json) =
      _$_Downloads.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$DownloadsCopyWith<_Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}