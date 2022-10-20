import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///base container
class BaseContainer extends StatelessWidget {
  ///pass [child] to display content in container
  const BaseContainer({
    super.key,
    this.width,
    this.height,
    required this.child,
  });

  ///container width
  final double? width;

  ///container height
  final double? height;

  ///content
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 39.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(33.r)),
        color: const Color(0xFFFFFFFF),
      ),
      child: child,
    );
  }
}
