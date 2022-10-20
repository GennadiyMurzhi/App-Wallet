import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_app/ui/core/widgets/base_container.dart';
import 'package:wallet_app/ui/core/widgets/grey_text.dart';

///widget to display daily points
class DailyPointsWidget extends StatelessWidget {
  ///pass daily points to display them
  const DailyPointsWidget({
    super.key,
    required this.dailyPoints,
  });

  ///daily points
  final String dailyPoints;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      width: 525.w,
      height: 240.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Daily Points',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          GreyText(
            dailyPoints,
            needEllipsis: false,
          ),
        ],
      ),
    );
  }
}
