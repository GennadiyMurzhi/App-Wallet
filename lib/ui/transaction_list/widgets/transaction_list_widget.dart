import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/application/data_receiver.dart';
import 'package:wallet_app/application/transactions_cubit/transactions_cubit.dart';
import 'package:wallet_app/domain/transactions/transaction.dart';
import 'package:wallet_app/injectable.dart';
import 'package:wallet_app/ui/core/widgets/base_container.dart';
import 'package:wallet_app/ui/transaction_list/widgets/transaction_list_item_widget.dart';

///widget to display transaction list
class TransactionListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, bottom: 34.h),
            child: Text(
              'Latest Transactions',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 64.sp,
                  ),
            ),
          ),
        ),
        BaseContainer(
          child: StreamBuilder<TransactionList>(
            stream: getIt<DataReceiver<TransactionList>>().dataStream,
            builder: (BuildContext context, AsyncSnapshot<TransactionList> snapshot) {
              if (snapshot.data != null) {
                return Column(
                  children: List<Widget>.generate(
                    snapshot.data!.transactionList.isEmpty ? 0 : 10,
                    (int index) => TransactionListItemWidget(
                      transaction: snapshot.data!.transactionList[index],
                      onTap: () {
                        BlocProvider.of<TransactionsCubit>(context)
                            .onOpenTransaction(snapshot.data!.transactionList[index]);
                        Navigator.of(context).pushNamed('/transaction_screen');
                      },
                      isLast: index == 9,
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      ],
    );
  }
}
