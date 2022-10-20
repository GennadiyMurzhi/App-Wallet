import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/domain/transactions/value_formaters.dart';
import 'package:wallet_app/domain/user/user.dart';
import 'package:wallet_app/enums.dart';

part 'transaction.freezed.dart';

part 'transaction.g.dart';

///model for Transaction list
@freezed
class TransactionList with _$TransactionList {
  ///pass list of transaction
  const factory TransactionList({
    required List<Transaction> transactionList,
  }) = _TransactionList;

  ///standard method to serialization Transaction
  factory TransactionList.fromJson(Map<String, dynamic> json) => _$TransactionListFromJson(json);

  ///Empty Transaction List
  factory TransactionList.empty() => const TransactionList(
        transactionList: <Transaction>[],
      );
}

///model for transaction
@freezed
class Transaction with _$Transaction {
  /// pass params to create Transaction
  ///
  /// transactionType: It can be Payment - replenishment of the card (the amount is displayed with +) and Credit - expense from the card
  ///
  /// amount - transaction amount of money
  ///
  /// name - transaction name (IKEA, Target, etc.)
  ///
  /// description - transaction description (free text)
  ///
  /// stringDate - the name of the day should be displayed for the last week, for all other dates.
  ///
  /// isPending - transaction can be in pending status - then it is displayed before the description (see the first transaction)
  ///
  /// authorizedUser - the transaction can be executed by another person, in this case the name of this user is displayed
  /// before the date (1st and 3rd transactions)
  factory Transaction({
    @TransactionTypeConverter() required TransactionType transactionType,
    required double amount,
    required String name,
    required String description,
    //date in milli seconds
    required int date,
    required bool isPending,
    User? authorizedUser,
  }) = _Transaction;

  const Transaction._();

  ///standard method to serialization Transaction
  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

  ///Empty Transaction
  factory Transaction.empty() => Transaction(
        transactionType: TransactionType.none,
        amount: 0,
        name: '',
        description: '',
        date: 0,
        isPending: false,
      );

  ///method to get formatted string amount with $ letter,
  String getStringAmount() => formatDoubleMoneyToStringMoney(amount);

  ///method to get formatted string amount with $ letter, Depending on the type of transaction is added +
  String getStringAmountByTransactionType() => formatDoubleMoneyToStringMoneyByTransactionType(amount, transactionType);

  ///method to get the date string. If the date is not later than seven days, the day of the week is returned
  String getStringDate() => millisecondsSinceEpochToStringDate(date);

  ///method to get the date string with time. If the date is not later than seven days, the day of the week is returned
  String getStringDateWithTime() => millisecondsSinceEpochToStringDateWithTime(date);

  ///method to get the user name of the transaction, if there is one. Otherwise null
  String? transactionUserNameOrNull() => authorizedUser == null ? null : authorizedUser!.name;

  ///method to get status transaction
  String getTransactionStatus() => isPending ? 'Pending' : 'Approved';
}

///converter for String type from json to TransactionType value in Transaction model
class TransactionTypeConverter implements JsonConverter<TransactionType, String> {
  ///standard constructor. Needed to use annotation @TransactionTypeConverter()
  const TransactionTypeConverter();

  @override
  TransactionType fromJson(String transactionTypeString) {
    return transactionTypeStringToTransactionType(transactionTypeString);
  }

  @override
  String toJson(TransactionType transactionType) {
    return transactionTypeToTransactionTypeString(transactionType);
  }
}
