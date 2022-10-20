import 'package:wallet_app/domain/transactions/value_formaters.dart';
import 'package:wallet_app/enums.dart';

///method for scoring with the algorithm and formatting int points to String points
String stringPointsCount(int pointsCount) {
  return intCountsToStringCounts(pointsCount);
}

///method for scoring with the algorithm
int pointsCount() {
  final DateTime nowDate = DateTime.now();

  final DateTime springStart = DateTime(nowDate.year, DateTime.march);
  final DateTime summerStart = DateTime(nowDate.year, DateTime.june);
  final DateTime autumnStart = DateTime(nowDate.year, DateTime.september);
  final DateTime winterStart;
  if (nowDate.month == DateTime.december) {
    winterStart = DateTime(nowDate.year, DateTime.december);
  } else {
    winterStart = DateTime(nowDate.year - 1, DateTime.december);
  }

  final Season season = identifySeason(nowDate.month);

  late final int countDays;
  if (season == Season.spring) {
    countDays = nowDate.difference(springStart).inDays;
  } else if (season == Season.summer) {
    countDays = nowDate.difference(summerStart).inDays;
  } else if (season == Season.autumn) {
    countDays = nowDate.difference(autumnStart).inDays;
  } else if (season == Season.winter) {
    countDays = nowDate.difference(winterStart).inDays;
  }

  int countedPoints = 0;
  int lastDayPoints = 0;
  int poseLastDayPoints = 0;
  for (int i = 1; i <= countDays; i++) {
    if (i >= 3) {
      poseLastDayPoints = lastDayPoints;
      lastDayPoints = countedPoints;
      countedPoints = (lastDayPoints * 0.6 + poseLastDayPoints).round();
    } else if (i == 1) {
      countedPoints++;
    } else if (i == 2) {
      lastDayPoints = countedPoints;
      countedPoints = countedPoints + 3;
    }
  }

  return countedPoints;
}
