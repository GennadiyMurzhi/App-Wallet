// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transactions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionsState {
  Balance get balance => throw _privateConstructorUsedError;
  Month get currentMonth => throw _privateConstructorUsedError;
  DailyPoints get dailyPoints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionsStateCopyWith<TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res, TransactionsState>;
  @useResult
  $Res call({Balance balance, Month currentMonth, DailyPoints dailyPoints});

  $BalanceCopyWith<$Res> get balance;
  $MonthCopyWith<$Res> get currentMonth;
  $DailyPointsCopyWith<$Res> get dailyPoints;
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res, $Val extends TransactionsState>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? currentMonth = null,
    Object? dailyPoints = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance,
      currentMonth: null == currentMonth
          ? _value.currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as Month,
      dailyPoints: null == dailyPoints
          ? _value.dailyPoints
          : dailyPoints // ignore: cast_nullable_to_non_nullable
              as DailyPoints,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BalanceCopyWith<$Res> get balance {
    return $BalanceCopyWith<$Res>(_value.balance, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MonthCopyWith<$Res> get currentMonth {
    return $MonthCopyWith<$Res>(_value.currentMonth, (value) {
      return _then(_value.copyWith(currentMonth: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyPointsCopyWith<$Res> get dailyPoints {
    return $DailyPointsCopyWith<$Res>(_value.dailyPoints, (value) {
      return _then(_value.copyWith(dailyPoints: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionsStateCopyWith<$Res>
    implements $TransactionsStateCopyWith<$Res> {
  factory _$$_TransactionsStateCopyWith(_$_TransactionsState value,
          $Res Function(_$_TransactionsState) then) =
      __$$_TransactionsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Balance balance, Month currentMonth, DailyPoints dailyPoints});

  @override
  $BalanceCopyWith<$Res> get balance;
  @override
  $MonthCopyWith<$Res> get currentMonth;
  @override
  $DailyPointsCopyWith<$Res> get dailyPoints;
}

/// @nodoc
class __$$_TransactionsStateCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$_TransactionsState>
    implements _$$_TransactionsStateCopyWith<$Res> {
  __$$_TransactionsStateCopyWithImpl(
      _$_TransactionsState _value, $Res Function(_$_TransactionsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? currentMonth = null,
    Object? dailyPoints = null,
  }) {
    return _then(_$_TransactionsState(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance,
      currentMonth: null == currentMonth
          ? _value.currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as Month,
      dailyPoints: null == dailyPoints
          ? _value.dailyPoints
          : dailyPoints // ignore: cast_nullable_to_non_nullable
              as DailyPoints,
    ));
  }
}

/// @nodoc

class _$_TransactionsState implements _TransactionsState {
  const _$_TransactionsState(
      {required this.balance,
      required this.currentMonth,
      required this.dailyPoints});

  @override
  final Balance balance;
  @override
  final Month currentMonth;
  @override
  final DailyPoints dailyPoints;

  @override
  String toString() {
    return 'TransactionsState(balance: $balance, currentMonth: $currentMonth, dailyPoints: $dailyPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionsState &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currentMonth, currentMonth) ||
                other.currentMonth == currentMonth) &&
            (identical(other.dailyPoints, dailyPoints) ||
                other.dailyPoints == dailyPoints));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, balance, currentMonth, dailyPoints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionsStateCopyWith<_$_TransactionsState> get copyWith =>
      __$$_TransactionsStateCopyWithImpl<_$_TransactionsState>(
          this, _$identity);
}

abstract class _TransactionsState implements TransactionsState {
  const factory _TransactionsState(
      {required final Balance balance,
      required final Month currentMonth,
      required final DailyPoints dailyPoints}) = _$_TransactionsState;

  @override
  Balance get balance;
  @override
  Month get currentMonth;
  @override
  DailyPoints get dailyPoints;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsStateCopyWith<_$_TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
