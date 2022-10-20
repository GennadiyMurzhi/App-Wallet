import 'package:flutter/material.dart';
import 'package:wallet_app/ui/transaction/transaction_data_item_conteiner.dart';

///widget to display item as row
class ItemRowWidget extends StatelessWidget {
  ///pass item data to display them
  const ItemRowWidget({
    super.key,
    required this.name,
    required this.data,
  });

  ///item name
  final String name;

  ///item data
  final String data;

  @override
  Widget build(BuildContext context) {
    return TransactionDataItemContainer(
      needLine: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            data,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
