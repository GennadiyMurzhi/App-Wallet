import 'package:flutter/material.dart';

///container with a line if you need it
class AddDividerWidget extends StatelessWidget {
  ///pass child and if you need a line
  const AddDividerWidget({
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
    return Column(
      children: <Widget>[
        child,
        if (needLine)
          const Divider(
            height: 1,
            color: Color(0xFFC6C6C8),
          ),
      ],
    );
  }
}
