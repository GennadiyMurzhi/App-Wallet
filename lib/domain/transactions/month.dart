import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/domain/transactions/value_formaters.dart';

part 'month.freezed.dart';

///model for Month
///with the ability to create an object with the current month based on the date specified on the phone
@freezed
class Month with _$Month {
  ///pass the string with the name of the month
  const factory Month({
    required String month,
  }) = _Month;

  ///constructor to create a CurrentMonth with the current month
  factory Month.currentMonth() {
    final DateTime currentDate = DateTime.now();
    final String month = monthIntToMonthString(currentDate.month);

    return Month(
      month: month,
    );
  }
}
