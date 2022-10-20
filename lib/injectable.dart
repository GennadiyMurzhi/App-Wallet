import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/application/data_receiver.dart';
import 'package:wallet_app/domain/transactions/transaction.dart';
import 'package:wallet_app/injectable.config.dart';

///instance of GetIt
final GetIt getIt = GetIt.instance;

///This method needed for configure GetIt
@injectableInit
Future<void> configureInjection(String env) async {
  $initGetIt(getIt, environment: env);

  getIt.registerLazySingleton<DataReceiver<TransactionList>>(() => DataReceiver<TransactionList>(TransactionList.empty()));
  getIt.registerLazySingleton<DataReceiver<Transaction>>(() => DataReceiver<Transaction>(Transaction.empty()));
}
