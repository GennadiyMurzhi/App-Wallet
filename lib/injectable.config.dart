// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/transactions_cubit/transactions_cubit.dart' as _i5;
import 'data/wallet_app_repository.dart' as _i4;
import 'domain/transactions/i_transactions_repository.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.ITransactionsRepository>(
      () => _i4.TransactionsRepository());
  gh.lazySingleton<_i5.TransactionsCubit>(
      () => _i5.TransactionsCubit(get<_i3.ITransactionsRepository>()));
  return get;
}
