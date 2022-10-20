import 'package:flutter/material.dart';
import 'package:wallet_app/ui/core/widgets/grey_text.dart';

///transaction date in the place of the user name, if the transaction is from another user
class TransactionListItemDateWidget extends StatelessWidget {
  ///pass parameters to display the date of the transaction with the name of the user from whom the transaction is from, if necessary
  const TransactionListItemDateWidget(
    this.date, {
    required this.userName,
  });

  ///transaction date
  final String date;

  ///transaction user name, if the transaction is from a user
  final String? userName;

  @override
  Widget build(BuildContext context) {
    final String date;
    if (userName != null) {
      date = '$userName - ${this.date}';
    } else {
      date = this.date;
    }

    return GreyText(date, needEllipsis: false);
  }
}
