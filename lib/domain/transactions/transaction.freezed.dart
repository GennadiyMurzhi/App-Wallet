// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionList _$TransactionListFromJson(Map<String, dynamic> json) {
  return _TransactionList.fromJson(json);
}

/// @nodoc
mixin _$TransactionList {
  List<Transaction> get transactionList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionListCopyWith<TransactionList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionListCopyWith<$Res> {
  factory $TransactionListCopyWith(
          TransactionList value, $Res Function(TransactionList) then) =
      _$TransactionListCopyWithImpl<$Res, TransactionList>;
  @useResult
  $Res call({List<Transaction> transactionList});
}

/// @nodoc
class _$TransactionListCopyWithImpl<$Res, $Val extends TransactionList>
    implements $TransactionListCopyWith<$Res> {
  _$TransactionListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionList = null,
  }) {
    return _then(_value.copyWith(
      transactionList: null == transactionList
          ? _value.transactionList
          : transactionList // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionListCopyWith<$Res>
    implements $TransactionListCopyWith<$Res> {
  factory _$$_TransactionListCopyWith(
          _$_TransactionList value, $Res Function(_$_TransactionList) then) =
      __$$_TransactionListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Transaction> transactionList});
}

/// @nodoc
class __$$_TransactionListCopyWithImpl<$Res>
    extends _$TransactionListCopyWithImpl<$Res, _$_TransactionList>
    implements _$$_TransactionListCopyWith<$Res> {
  __$$_TransactionListCopyWithImpl(
      _$_TransactionList _value, $Res Function(_$_TransactionList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionList = null,
  }) {
    return _then(_$_TransactionList(
      transactionList: null == transactionList
          ? _value._transactionList
          : transactionList // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionList implements _TransactionList {
  const _$_TransactionList({required final List<Transaction> transactionList})
      : _transactionList = transactionList;

  factory _$_TransactionList.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionListFromJson(json);

  final List<Transaction> _transactionList;
  @override
  List<Transaction> get transactionList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionList);
  }

  @override
  String toString() {
    return 'TransactionList(transactionList: $transactionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionList &&
            const DeepCollectionEquality()
                .equals(other._transactionList, _transactionList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionListCopyWith<_$_TransactionList> get copyWith =>
      __$$_TransactionListCopyWithImpl<_$_TransactionList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionListToJson(
      this,
    );
  }
}

abstract class _TransactionList implements TransactionList {
  const factory _TransactionList(
      {required final List<Transaction> transactionList}) = _$_TransactionList;

  factory _TransactionList.fromJson(Map<String, dynamic> json) =
      _$_TransactionList.fromJson;

  @override
  List<Transaction> get transactionList;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionListCopyWith<_$_TransactionList> get copyWith =>
      throw _privateConstructorUsedError;
}

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  @TransactionTypeConverter()
  TransactionType get transactionType => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description =>
      throw _privateConstructorUsedError; //date in milli seconds
  int get date => throw _privateConstructorUsedError;
  bool get isPending => throw _privateConstructorUsedError;
  User? get authorizedUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {@TransactionTypeConverter() TransactionType transactionType,
      double amount,
      String name,
      String description,
      int date,
      bool isPending,
      User? authorizedUser});

  $UserCopyWith<$Res>? get authorizedUser;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionType = null,
    Object? amount = null,
    Object? name = null,
    Object? description = null,
    Object? date = null,
    Object? isPending = null,
    Object? authorizedUser = freezed,
  }) {
    return _then(_value.copyWith(
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
      authorizedUser: freezed == authorizedUser
          ? _value.authorizedUser
          : authorizedUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get authorizedUser {
    if (_value.authorizedUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.authorizedUser!, (value) {
      return _then(_value.copyWith(authorizedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TransactionTypeConverter() TransactionType transactionType,
      double amount,
      String name,
      String description,
      int date,
      bool isPending,
      User? authorizedUser});

  @override
  $UserCopyWith<$Res>? get authorizedUser;
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionType = null,
    Object? amount = null,
    Object? name = null,
    Object? description = null,
    Object? date = null,
    Object? isPending = null,
    Object? authorizedUser = freezed,
  }) {
    return _then(_$_Transaction(
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
      authorizedUser: freezed == authorizedUser
          ? _value.authorizedUser
          : authorizedUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction extends _Transaction {
  _$_Transaction(
      {@TransactionTypeConverter() required this.transactionType,
      required this.amount,
      required this.name,
      required this.description,
      required this.date,
      required this.isPending,
      this.authorizedUser})
      : super._();

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  @TransactionTypeConverter()
  final TransactionType transactionType;
  @override
  final double amount;
  @override
  final String name;
  @override
  final String description;
//date in milli seconds
  @override
  final int date;
  @override
  final bool isPending;
  @override
  final User? authorizedUser;

  @override
  String toString() {
    return 'Transaction(transactionType: $transactionType, amount: $amount, name: $name, description: $description, date: $date, isPending: $isPending, authorizedUser: $authorizedUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending) &&
            (identical(other.authorizedUser, authorizedUser) ||
                other.authorizedUser == authorizedUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionType, amount, name,
      description, date, isPending, authorizedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction extends Transaction {
  factory _Transaction(
      {@TransactionTypeConverter()
          required final TransactionType transactionType,
      required final double amount,
      required final String name,
      required final String description,
      required final int date,
      required final bool isPending,
      final User? authorizedUser}) = _$_Transaction;
  _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  @TransactionTypeConverter()
  TransactionType get transactionType;
  @override
  double get amount;
  @override
  String get name;
  @override
  String get description;
  @override //date in milli seconds
  int get date;
  @override
  bool get isPending;
  @override
  User? get authorizedUser;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
