///Error indicating the wrong number of the month
class UnexpectedMonth extends Error {
  @override
  String toString() {
    return Error.safeToString('Invalid value at the time of creating an object with the current month');
  }
}

///Error indicating the wrong number of the weekday
class UnexpectedWeekday extends Error {
  @override
  String toString() {
    return Error.safeToString('Invalid value to detect current weekday');
  }
}

///Error indicating the wrong type of transaction in the string
class UnexpectedStringTransactionType extends Error {
  @override
  String toString() {
    return Error.safeToString('Invalid string value to convert to transaction type');
  }
}

///Error indicating that an invalid transaction type was passed
class UnexpectedTransactionType extends Error {
  @override
  String toString() {
    return Error.safeToString('Invalid transaction type was passed ');
  }
}
