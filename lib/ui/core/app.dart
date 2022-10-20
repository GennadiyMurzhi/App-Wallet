import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/application/transactions_cubit/transactions_cubit.dart';
import 'package:wallet_app/injectable.dart';
import 'package:wallet_app/ui/transaction/transaction_screen.dart';
import 'package:wallet_app/ui/transaction_list/transaction_list_screen.dart';

///Wallet App. Start widget
class WalletApp extends StatelessWidget {
  /// Initializes [key] for subclasses.
  const WalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TransactionsCubit>(
      create: (BuildContext context) => getIt<TransactionsCubit>()..readTransactionsFile(),
      child: ScreenUtilInit(
        designSize: const Size(1170, 2300),
        builder: (BuildContext context, Widget? child) => MaterialApp(
          title: 'Wallet App',
          initialRoute: '/transaction_list_screen',
          routes: <String, Widget Function(BuildContext)>{
            '/transaction_list_screen': (BuildContext context) => TransactionListScreen(),
            '/transaction_screen': (BuildContext context) => TransactionScreen(),
          },
          theme: ThemeData(
            backgroundColor: const Color(0xFFF2F2F6),
            scaffoldBackgroundColor: const Color(0xFFF2F2F6),
            //primarySwatch: Colors.,
            textTheme: TextTheme(
              bodyMedium: TextStyle(fontSize: 40.sp),
              bodyLarge: TextStyle(fontSize: 48.sp),
            ),
          ),
        ),
      ),
    );
  }
}
