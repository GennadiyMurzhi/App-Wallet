import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/application/transactions_cubit/transactions_cubit.dart';
import 'package:wallet_app/ui/core/layout.dart';
import 'package:wallet_app/ui/transaction_list/widgets/card_balance_widget.dart';
import 'package:wallet_app/ui/transaction_list/widgets/daily_points_widget.dart';
import 'package:wallet_app/ui/transaction_list/widgets/no_payment_due_widget.dart';
import 'package:wallet_app/ui/transaction_list/widgets/transaction_list_widget.dart';

///Main screen to display transaction list and other information
class TransactionListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsCubit, TransactionsState>(
      builder: (BuildContext context, TransactionsState state) {
        final String cardBalance = state.balance.getFormattedStringCardBalance();
        final String availableMoney = state.balance.getFormattedStringAvailableMoney();
        final String dailyPoints = state.dailyPoints.getFormattedStringPoints();
        final String currentMonth = state.currentMonth.month;

        return Layout(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(48.w, 74.h + MediaQuery.of(context).padding.top, 48.w, 74.h),
              //padding: EdgeInsets.zero,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: 525.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CardBalanceWidget(cardBalance: cardBalance, availableMoney: availableMoney),
                            DailyPointsWidget(dailyPoints: dailyPoints),
                          ],
                        ),
                      ),
                      NoPaymentDueWidget(currentMonth: currentMonth),
                    ],
                  ),
                  SizedBox(height: 91.h),
                  TransactionListWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
