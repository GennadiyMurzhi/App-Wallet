import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/domain/transactions/transaction.dart';
import 'package:wallet_app/ui/transaction_list/widgets/random_icon_widget.dart';
import 'package:wallet_app/ui/transaction_list/widgets/transaction_list_item_date_widget.dart';
import 'package:wallet_app/ui/transaction_list/widgets/transaction_list_item_description_widget.dart';

///Transaction item list widget
class TransactionListItemWidget extends StatelessWidget {
  ///pass the transaction object to display in the list and to send it to the transaction stream
  const TransactionListItemWidget({
    super.key,
    required this.transaction,
    required this.onTap,
    required this.isLast,
  });

  ///the transaction to be displayed in the list
  final Transaction transaction;

  ///detect last transaction in list
  final bool isLast;

  ///function to open to the transaction
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: SizedBox(
        width: 993.w,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 33.h),
              child: SizedBox(
                height: 172.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RandomIconWidget(),
                    SizedBox(
                      width: 748.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                transaction.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: 44.sp, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                transaction.getStringAmountByTransactionType(),
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 44.sp),
                              ),
                            ],
                          ),
                          TransactionListItemDescriptionWidget(
                            transaction.description,
                            isPending: transaction.isPending,
                          ),
                          TransactionListItemDateWidget(
                            transaction.getStringDate(),
                            userName: transaction.authorizedUser == null ? null : transaction.authorizedUser!.name,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 3),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFC4C4C6),
                        size: 16,
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (!isLast)
              const Divider(
                height: 1,
                color: Color(0xFFC6C6C8),
              ),
          ],
        ),
      ),
    );
  }
}
