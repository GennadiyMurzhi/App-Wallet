import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/ui/core/widgets/add_divider_widget.dart';

///transaction data item container with standard width and padding
class TransactionDataItemContainer extends StatelessWidget {
  ///pass child and if you need a line
  const TransactionDataItemContainer({
    super.key,
    required this.needLine,
    required this.child,
  });

  ///If you need a line
  final bool needLine;

  ///child
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AddDividerWidget(
      needLine: needLine,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 46.h),
        child: SizedBox(
          width: 1026.w,
          child: child,
        ),
      ),
    );
  }
}
