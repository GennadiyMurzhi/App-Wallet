import 'package:flutter/material.dart';

///This widget is used as a frame for the screens
class Layout extends StatelessWidget {
  ///pass [child] to display main content
  const Layout({
    super.key,
    required this.child,
  });

  ///Main content
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
