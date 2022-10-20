import 'package:wallet_app/domain/core/exeptions.dart';
import 'package:wallet_app/enums.dart';

///function for entering the number of the month into a string
String monthIntToMonthString(int intMonth) {
  switch (intMonth) {
    case DateTime.january:
      return 'January';
    case DateTime.february:
      return 'February';
    case DateTime.march:
      return 'March';
    case DateTime.april:
      return 'April';
    case DateTime.may:
      return 'May';
    case DateTime.june:
      return 'June';
    case DateTime.july:
      return 'July';
    case DateTime.august:
      return 'August';
    case DateTime.september:
      return 'September';
    case DateTime.october:
      return 'October';
    case DateTime.november:
      return 'November';
    case DateTime.december:
      return 'December';
    default:
      throw UnexpectedMonth();
  }
}

///function for entering the number of the weekday into a string
String weekdayIntToWeekdayString(int weekday) {
  switch (weekday) {
    case DateTime.monday:
      return 'Monday';
    case DateTime.tuesday:
      return 'Tuesday';
    case DateTime.wednesday:
      return 'Wednesday';
    case DateTime.thursday:
      return 'Thursday';
    case DateTime.friday:
      return 'Friday';
    case DateTime.saturday:
      return 'Saturday';
    case DateTime.sunday:
      return 'Sunday';
    default:
      throw UnexpectedWeekday();
  }
}

///function to identify the season. Pass month in DateTime int to determine which season the month is in
Season identifySeason(int intMonth) {
  if (intMonth == DateTime.december || intMonth == DateTime.january || intMonth == DateTime.february) {
    return Season.winter;
  }
  if (intMonth >= DateTime.march && intMonth <= DateTime.may) {
    return Season.spring;
  }
  if (intMonth >= DateTime.june && intMonth <= DateTime.august) {
    return Season.summer;
  }
  if (intMonth >= DateTime.september && intMonth <= DateTime.november) {
    return Season.autumn;
  }
  throw UnexpectedMonth();
}

///  function for formatting the int of points into String of points. If there are more than a thousand points, the letter
///  K is added at the end.
String intCountsToStringCounts(int intCountPoints) {
  final String stringCountPoints;
  if (intCountPoints >= 1000) {
    stringCountPoints = (intCountPoints / 1000).round().toString() + 'K';
  } else {
    stringCountPoints = intCountPoints.toString();
  }
  return stringCountPoints;
}

///function for formatting the date string in MillisecondsSinceEpoch
int stringDateToMillisecondsSinceEpoch(String stringDate) {
  int? days;
  int? month;
  int? year;

  String buffer = '';
  //TODO: error handling is needed with int.parse
  for (int i = 0; i <= stringDate.length - 1; i++) {
    if (stringDate[i] != '/') {
      buffer = buffer + stringDate[i];
      if (i == stringDate.length - 1) {
        year = int.parse(buffer) + 2000;
      }
    } else {
      if (days == null) {
        days = int.parse(buffer);
        buffer = '';
      } else if (month == null) {
        month = int.parse(buffer);
        buffer = '';
      }
    }
  }

  //TODO: error handling is needed in case the variables(year, month, days) are null
  return DateTime(year!, month!, days!).millisecondsSinceEpoch;
}

///function for formatting MillisecondsSinceEpoch in the date string
String millisecondsSinceEpochToStringDate(int dateInMilliSeconds) {
  final DateTime dateTimeFromMilliSeconds = DateTime.fromMillisecondsSinceEpoch(dateInMilliSeconds);

  final String stringDate;

  final int differentDays = DateTime.now().difference(dateTimeFromMilliSeconds).inDays;
  if (differentDays <= 1) {
    if (differentDays == 0) {
      final DateTime differentDateTime =
          DateTime.fromMillisecondsSinceEpoch(dateTimeFromMilliSeconds.difference(DateTime.now()).inMilliseconds);
      final String differentHour = _timeUnitFormatting(differentDateTime.hour);
      final String differentMinute = _timeUnitFormatting(differentDateTime.minute);
      stringDate = 'was before $differentHour:$differentMinute';
    } else {
      stringDate = 'Yesterday';
    }
  } else if (differentDays < 7) {
    stringDate = weekdayIntToWeekdayString(dateTimeFromMilliSeconds.weekday);
  } else {
    stringDate =
        '${dateTimeFromMilliSeconds.day}/${dateTimeFromMilliSeconds.month}/${dateTimeFromMilliSeconds.year - 2000}';
  }

  return stringDate;
}

///function for formatting MillisecondsSinceEpoch in the date string
String millisecondsSinceEpochToStringDateWithTime(int dateInMilliSeconds) {
  final DateTime dateTimeFromMilliSeconds = DateTime.fromMillisecondsSinceEpoch(dateInMilliSeconds);

  final String stringDate = millisecondsSinceEpochToStringDate(dateInMilliSeconds);
  final String timePart;

  final int differentDays = DateTime.now().difference(dateTimeFromMilliSeconds).inDays;
  if (differentDays > 1) {
    timePart = ', ${dateTimeFromMilliSeconds.hour}:${dateTimeFromMilliSeconds.minute}';
  } else {
    timePart = '';
  }

  return stringDate + timePart;
}

String _timeUnitFormatting(int unit) {
  if (unit < 10) {
    return '0${unit}';
  } else {
    return unit.toString();
  }
}

///formatting money into a line with a $ sign
String formatDoubleMoneyToStringMoney(double money) {
  return '\$' + money.toStringAsFixed(2);
}

///formatting money into a line with a $ sign. Depending on the type of transaction is added "+"
String formatDoubleMoneyToStringMoneyByTransactionType(double money, TransactionType transactionType) {
  if (transactionType == TransactionType.payment) {
    return '+' + formatDoubleMoneyToStringMoney(money);
  }
  return formatDoubleMoneyToStringMoney(money);
}

///
TransactionType transactionTypeStringToTransactionType(String transactionTypeString) {
  if (transactionTypeString.compareTo(TransactionType.payment.name) == 0) {
    return TransactionType.payment;
  } else if (transactionTypeString.compareTo(TransactionType.credit.name) == 0) {
    return TransactionType.credit;
  } else {
    throw UnexpectedStringTransactionType();
  }
}

///
String transactionTypeToTransactionTypeString(TransactionType transactionType) {
  if (transactionType == TransactionType.payment) {
    return TransactionType.payment.name;
  } else if (transactionType == TransactionType.credit) {
    return TransactionType.credit.name;
  } else {
    throw UnexpectedTransactionType();
  }
}
