import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/domain/transactions/points_count.dart';

part 'daily_points.freezed.dart';

///model for Daily Points
@freezed
class DailyPoints with _$DailyPoints {
  ///pass the points in a string, because points can be rounded up to the thousands and the letter K is added at the end
  factory DailyPoints({
    required int points,
  }) = _DailyPoints;

  const DailyPoints._();

  ///points counted according to a predefined algorithm
  factory DailyPoints.calculatedPoints() => DailyPoints(
        points: pointsCount(),
      );

  ///method to get formatted string points with K letter
  String getFormattedStringPoints() => stringPointsCount(points);
}
