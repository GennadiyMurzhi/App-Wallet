// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Balance {
  double get cardBalance => throw _privateConstructorUsedError;
  double get availableMoney => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BalanceCopyWith<Balance> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceCopyWith<$Res> {
  factory $BalanceCopyWith(Balance value, $Res Function(Balance) then) =
      _$BalanceCopyWithImpl<$Res, Balance>;
  @useResult
  $Res call({double cardBalance, double availableMoney});
}

/// @nodoc
class _$BalanceCopyWithImpl<$Res, $Val extends Balance>
    implements $BalanceCopyWith<$Res> {
  _$BalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardBalance = null,
    Object? availableMoney = null,
  }) {
    return _then(_value.copyWith(
      cardBalance: null == cardBalance
          ? _value.cardBalance
          : cardBalance // ignore: cast_nullable_to_non_nullable
              as double,
      availableMoney: null == availableMoney
          ? _value.availableMoney
          : availableMoney // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BalanceCopyWith<$Res> implements $BalanceCopyWith<$Res> {
  factory _$$_BalanceCopyWith(
          _$_Balance value, $Res Function(_$_Balance) then) =
      __$$_BalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double cardBalance, double availableMoney});
}

/// @nodoc
class __$$_BalanceCopyWithImpl<$Res>
    extends _$BalanceCopyWithImpl<$Res, _$_Balance>
    implements _$$_BalanceCopyWith<$Res> {
  __$$_BalanceCopyWithImpl(_$_Balance _value, $Res Function(_$_Balance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardBalance = null,
    Object? availableMoney = null,
  }) {
    return _then(_$_Balance(
      cardBalance: null == cardBalance
          ? _value.cardBalance
          : cardBalance // ignore: cast_nullable_to_non_nullable
              as double,
      availableMoney: null == availableMoney
          ? _value.availableMoney
          : availableMoney // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Balance extends _Balance {
  _$_Balance({required this.cardBalance, required this.availableMoney})
      : super._();

  @override
  final double cardBalance;
  @override
  final double availableMoney;

  @override
  String toString() {
    return 'Balance(cardBalance: $cardBalance, availableMoney: $availableMoney)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Balance &&
            (identical(other.cardBalance, cardBalance) ||
                other.cardBalance == cardBalance) &&
            (identical(other.availableMoney, availableMoney) ||
                other.availableMoney == availableMoney));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardBalance, availableMoney);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BalanceCopyWith<_$_Balance> get copyWith =>
      __$$_BalanceCopyWithImpl<_$_Balance>(this, _$identity);
}

abstract class _Balance extends Balance {
  factory _Balance(
      {required final double cardBalance,
      required final double availableMoney}) = _$_Balance;
  _Balance._() : super._();

  @override
  double get cardBalance;
  @override
  double get availableMoney;
  @override
  @JsonKey(ignore: true)
  _$$_BalanceCopyWith<_$_Balance> get copyWith =>
      throw _privateConstructorUsedError;
}
