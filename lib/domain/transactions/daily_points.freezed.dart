// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DailyPoints {
  int get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyPointsCopyWith<DailyPoints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyPointsCopyWith<$Res> {
  factory $DailyPointsCopyWith(
          DailyPoints value, $Res Function(DailyPoints) then) =
      _$DailyPointsCopyWithImpl<$Res, DailyPoints>;
  @useResult
  $Res call({int points});
}

/// @nodoc
class _$DailyPointsCopyWithImpl<$Res, $Val extends DailyPoints>
    implements $DailyPointsCopyWith<$Res> {
  _$DailyPointsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DailyPointsCopyWith<$Res>
    implements $DailyPointsCopyWith<$Res> {
  factory _$$_DailyPointsCopyWith(
          _$_DailyPoints value, $Res Function(_$_DailyPoints) then) =
      __$$_DailyPointsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int points});
}

/// @nodoc
class __$$_DailyPointsCopyWithImpl<$Res>
    extends _$DailyPointsCopyWithImpl<$Res, _$_DailyPoints>
    implements _$$_DailyPointsCopyWith<$Res> {
  __$$_DailyPointsCopyWithImpl(
      _$_DailyPoints _value, $Res Function(_$_DailyPoints) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_$_DailyPoints(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DailyPoints extends _DailyPoints {
  _$_DailyPoints({required this.points}) : super._();

  @override
  final int points;

  @override
  String toString() {
    return 'DailyPoints(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyPoints &&
            (identical(other.points, points) || other.points == points));
  }

  @override
  int get hashCode => Object.hash(runtimeType, points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DailyPointsCopyWith<_$_DailyPoints> get copyWith =>
      __$$_DailyPointsCopyWithImpl<_$_DailyPoints>(this, _$identity);
}

abstract class _DailyPoints extends DailyPoints {
  factory _DailyPoints({required final int points}) = _$_DailyPoints;
  _DailyPoints._() : super._();

  @override
  int get points;
  @override
  @JsonKey(ignore: true)
  _$$_DailyPointsCopyWith<_$_DailyPoints> get copyWith =>
      throw _privateConstructorUsedError;
}
