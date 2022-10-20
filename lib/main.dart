import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/injectable.dart';
import 'package:wallet_app/ui/core/app.dart';

void main() {
  configureInjection(Environment.prod);

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent),
  );

  runApp(const WalletApp());
}
