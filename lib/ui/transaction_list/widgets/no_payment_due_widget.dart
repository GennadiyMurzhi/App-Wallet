import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/ui/core/widgets/base_container.dart';
import 'package:wallet_app/ui/core/widgets/grey_text.dart';

///No Payment Due Widget
class NoPaymentDueWidget extends StatelessWidget {
  ///pass currentMonth to display him with the rest of the text
  const NoPaymentDueWidget({
    super.key,
    required this.currentMonth,
  });

  ///current month to display month
  final String currentMonth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BaseContainer(
          width: 525.w,
          height: 525.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 35.h),
              const Text('No Payment Due'),
              GreyText(
                'You\'ve paid your\n$currentMonth balance',
                needEllipsis: false,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 33.h,
          right: 36.w,
          child: Container(
            width: 192.r,
            height: 192.r,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFE0E0E2),
                width: 1.w,
              ),
              color: const Color(0xFFEEEEEF),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check_rounded,
              size: 32,
            ),
          ),
        ),
      ],
    );
  }
}
