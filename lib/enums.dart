///enum to indicate the time of year
enum Season {
  ///is the time of the year based on the name
  spring,

  ///is the time of the year based on the name
  summer,

  ///is the time of the year based on the name
  autumn,

  ///is the time of the year based on the name
  winter,
}

///enum to indicate the type of transaction
enum TransactionType {
  ///is used when you do not know what type of transaction to use
  none,

  ///type indicating card replenishment
  payment,

  ///type indicating costs from the card
  credit,
}
