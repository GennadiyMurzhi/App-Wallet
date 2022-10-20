import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/application/data_receiver.dart';
import 'package:wallet_app/domain/transactions/balance.dart';
import 'package:wallet_app/domain/transactions/daily_points.dart';
import 'package:wallet_app/domain/transactions/i_transactions_repository.dart';
import 'package:wallet_app/domain/transactions/month.dart';
import 'package:wallet_app/domain/transactions/transaction.dart';
import 'package:wallet_app/injectable.dart';

part 'transactions_cubit.freezed.dart';
part 'transactions_state.dart';

///cubit to manage transactions
@lazySingleton
class TransactionsCubit extends Cubit<TransactionsState> {
  /// at the beginning is sad about the state of data generation
  ///
  /// pass the transaction repository to retrieve the transactions from the file
  TransactionsCubit(this._transactionsRepository) : super(TransactionsState.generateState());

  final ITransactionsRepository _transactionsRepository;

  ///method to read transaction file
  Future<void> readTransactionsFile() async {
    final TransactionList transactionList = await _transactionsRepository.getLatestTransaction();
    getIt<DataReceiver<TransactionList>>().addData(transactionList);
  }

  ///method to add a transaction to the transaction stream to display that transaction
  Future<void> onOpenTransaction(Transaction transaction) async {
    getIt<DataReceiver<Transaction>>().addData(transaction);
  }

  ///method to reset the transaction to empty
  Future<void> resetTransaction() async {
    getIt<DataReceiver<Transaction>>().addData(Transaction.empty());
  }
}
