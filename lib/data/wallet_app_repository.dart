import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/domain/transactions/i_transactions_repository.dart';
import 'package:wallet_app/domain/transactions/transaction.dart';

///ITransactions implementation
@LazySingleton(as: ITransactionsRepository)
class TransactionsRepository implements ITransactionsRepository {
  @override
  Future<TransactionList> getLatestTransaction() async {
    final String jsonString = await rootBundle.loadString('resources/transactions.json');

    return TransactionList.fromJson(jsonDecode(jsonString) as Map<String, dynamic>);
  }
}
