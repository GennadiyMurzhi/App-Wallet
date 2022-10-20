import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/application/data_receiver.dart';
import 'package:wallet_app/domain/transactions/transaction.dart';
import 'package:wallet_app/injectable.dart';
import 'package:wallet_app/ui/core/layout.dart';
import 'package:wallet_app/ui/core/widgets/base_container.dart';
import 'package:wallet_app/ui/core/widgets/grey_text.dart';
import 'package:wallet_app/ui/transaction/item_row_widget.dart';
import 'package:wallet_app/ui/transaction/transaction_data_item_conteiner.dart';

///Main screen to display transaction list and other information
class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 86.h + MediaQuery.of(context).padding.top),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF007AFF),
                  ),
                ),
              ),
              StreamBuilder<Transaction>(
                stream: getIt<DataReceiver<Transaction>>().dataStream,
                builder: (BuildContext context, AsyncSnapshot<Transaction> snapshot) {
                  if (snapshot.data != null) {
                    return Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 70.h, 44.h, 0),
                            child: Text(
                              snapshot.data!.getStringAmount(),
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 174.sp,
                              ),
                            ),
                          ),
                          GreyText(
                            snapshot.data!.name,
                            needEllipsis: false,
                            fontSize: 48.sp,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 35.h,
                              bottom: 118.h,
                            ),
                            child: GreyText(
                              snapshot.data!.getStringDateWithTime(),
                              needEllipsis: false,
                              fontSize: 48.sp,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 48.w),
                            child: BaseContainer(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  TransactionDataItemContainer(
                                    needLine: true,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          snapshot.data!.getTransactionStatus(),
                                          style: Theme.of(context).textTheme.bodyLarge,
                                        ),
                                        GreyText(
                                          snapshot.data!.description,
                                          needEllipsis: false,
                                          fontSize: 48.sp,
                                        ),
                                      ],
                                    ),
                                  ),
                                  ItemRowWidget(
                                    name: 'Total',
                                    data: snapshot.data!.getStringAmount(),
                                  ),
                                  ItemRowWidget(
                                    name: 'Type',
                                    data: snapshot.data!.transactionType.name,
                                  ),
                                  if (snapshot.data!.authorizedUser != null)
                                    ItemRowWidget(
                                      name: 'Target user',
                                      data: snapshot.data!.authorizedUser!.name,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
