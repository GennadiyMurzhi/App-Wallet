import 'package:wallet_app/domain/transactions/transaction.dart';

///contract for the transaction repository
abstract class ITransactionsRepository {
  ///method to get latest transaction. Should be randomly selected and the json file
  Future<TransactionList> getLatestTransaction();
}
