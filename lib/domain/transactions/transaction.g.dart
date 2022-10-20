// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionList _$$_TransactionListFromJson(Map<String, dynamic> json) =>
    _$_TransactionList(
      transactionList: (json['transactionList'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TransactionListToJson(_$_TransactionList instance) =>
    <String, dynamic>{
      'transactionList':
          instance.transactionList.map((e) => e.toJson()).toList(),
    };

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      transactionType: const TransactionTypeConverter()
          .fromJson(json['transactionType'] as String),
      amount: (json['amount'] as num).toDouble(),
      name: json['name'] as String,
      description: json['description'] as String,
      date: json['date'] as int,
      isPending: json['isPending'] as bool,
      authorizedUser: json['authorizedUser'] == null
          ? null
          : User.fromJson(json['authorizedUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'transactionType':
          const TransactionTypeConverter().toJson(instance.transactionType),
      'amount': instance.amount,
      'name': instance.name,
      'description': instance.description,
      'date': instance.date,
      'isPending': instance.isPending,
      'authorizedUser': instance.authorizedUser?.toJson(),
    };
