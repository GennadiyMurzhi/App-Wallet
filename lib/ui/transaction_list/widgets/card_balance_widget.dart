import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/ui/core/widgets/base_container.dart';
import 'package:wallet_app/ui/core/widgets/grey_text.dart';

///widget to display card balance
class CardBalanceWidget extends StatelessWidget {
  ///pass card balance and available money to display them
  const CardBalanceWidget({
    super.key,
    required this.cardBalance,
    required this.availableMoney,
  });

  ///card balance
  final String cardBalance;

  ///available money
  final String availableMoney;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      width: 525.w,
      height: 257.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 35.h),
          Text(
            'Card Balance',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            cardBalance,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 60.sp,
                ),
          ),
          GreyText(availableMoney + ' Available', needEllipsis: false),
        ],
      ),
    );
  }
}
