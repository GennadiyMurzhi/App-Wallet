import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///random icon widget for Transaction Item List Widget
class RandomIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<int> codeIcons = <int>[0xee2d, 0xe73c, 0xe766, 0xe770, 0xf563, 0xf04be, 0xf5b3, 0xe0db, 0xe844, 0xf77a];

    return Container(
      width: 135.r,
      height: 135.r,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.w,
          color: const Color(0xFF8E8E92),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(13.r),
        ),
        color: const Color(0xFF585858),
      ),
      child: Icon(
        IconData(
          codeIcons[Random().nextInt(codeIcons.length - 1)],
          fontFamily: 'MaterialIcons',
        ),
        size: 20,
        color: const Color(0xFFFFFFFF),
      ),
    );
  }
}
