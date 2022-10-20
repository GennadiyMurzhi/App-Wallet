import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/domain/transactions/value_formaters.dart';

part 'balance.freezed.dart';

///model for balance
///with the ability to create an object to test the application
@freezed
class Balance with _$Balance {
  ///pass params to create Balance with Card Balance Money and Available Money in $
  factory Balance({
    required double cardBalance,
    required double availableMoney,
  }) = _Balance;

  const Balance._();

  ///constructor to create a Balance with random Balance Money and Available Money
  factory Balance.randomBalance() {
    final double balanceMoney = Random().nextDouble() * 1500;
    final double availableMoney = 1500 - balanceMoney;

    return Balance(
      cardBalance: balanceMoney,
      availableMoney: availableMoney,
    );
  }

  ///method to get formatted string Card Balance with $ letter
  String getFormattedStringCardBalance() {
    return formatDoubleMoneyToStringMoney(cardBalance);
  }

  ///method to get formatted string Available Money with $ letter
  String getFormattedStringAvailableMoney() {
    return formatDoubleMoneyToStringMoney(availableMoney);
  }
}
