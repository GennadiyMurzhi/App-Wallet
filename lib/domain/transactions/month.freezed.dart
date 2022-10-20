// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'month.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Month {
  String get month => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MonthCopyWith<Month> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthCopyWith<$Res> {
  factory $MonthCopyWith(Month value, $Res Function(Month) then) =
      _$MonthCopyWithImpl<$Res, Month>;
  @useResult
  $Res call({String month});
}

/// @nodoc
class _$MonthCopyWithImpl<$Res, $Val extends Month>
    implements $MonthCopyWith<$Res> {
  _$MonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MonthCopyWith<$Res> implements $MonthCopyWith<$Res> {
  factory _$$_MonthCopyWith(_$_Month value, $Res Function(_$_Month) then) =
      __$$_MonthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String month});
}

/// @nodoc
class __$$_MonthCopyWithImpl<$Res> extends _$MonthCopyWithImpl<$Res, _$_Month>
    implements _$$_MonthCopyWith<$Res> {
  __$$_MonthCopyWithImpl(_$_Month _value, $Res Function(_$_Month) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
  }) {
    return _then(_$_Month(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Month implements _Month {
  const _$_Month({required this.month});

  @override
  final String month;

  @override
  String toString() {
    return 'Month(month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Month &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, month);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthCopyWith<_$_Month> get copyWith =>
      __$$_MonthCopyWithImpl<_$_Month>(this, _$identity);
}

abstract class _Month implements Month {
  const factory _Month({required final String month}) = _$_Month;

  @override
  String get month;
  @override
  @JsonKey(ignore: true)
  _$$_MonthCopyWith<_$_Month> get copyWith =>
      throw _privateConstructorUsedError;
}
