part of 'transactions_cubit.dart';

///state for transaction cubit
@freezed
abstract class TransactionsState with _$TransactionsState {
  ///pass params to store them in state
  const factory TransactionsState({
    required Balance balance,
    required Month currentMonth,
    required DailyPoints dailyPoints,
  }) = _TransactionsState;

  ///constructor to generate params
  factory TransactionsState.generateState() => TransactionsState(
        balance: Balance.randomBalance(),
        currentMonth: Month.currentMonth(),
        dailyPoints: DailyPoints.calculatedPoints(),
      );
}
