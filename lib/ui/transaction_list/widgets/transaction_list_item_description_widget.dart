import 'package:flutter/material.dart';
import 'package:wallet_app/ui/core/widgets/grey_text.dart';

///description to which the word "Pending" is added if the transaction status is Pending
class TransactionListItemDescriptionWidget extends StatelessWidget {
  ///pass parameters to display a description with the word "Pending" if it is needed
  const TransactionListItemDescriptionWidget(
    this.description, {
    super.key,
    required this.isPending,
  });

  ///transaction description
  final String description;

  ///whether the transaction is pending
  final bool isPending;

  @override
  Widget build(BuildContext context) {
    final String description;
    if (isPending) {
      description = 'Pending - ' + this.description;
    } else {
      description = this.description;
    }

    return GreyText(
      description,
      maxLines: 1,
      needEllipsis: true,
    );
  }
}
