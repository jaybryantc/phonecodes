part of phonecodes;

/// Currency enum represents the currency of a country.
enum Currency {
  /// Indian Rupee
  inr._("Indian Rupee", "INR", "₹"),

  /// United States Dollar
  usd._("United States Dollar", "USD", "\$"),

  /// Euro
  eur._("Euro", "EUR", "€"),
  ;

  /// The name of the currency.
  ///
  /// Example: Indian Rupee, United States Dollar, etc.
  final String name;

  /// The code of the currency.
  ///
  /// Example: INR, USD, etc.
  final String code;

  /// The symbol of the currency.
  ///
  /// Example: ₹, $, etc.
  final String symbol;

  const Currency._(this.name, this.code, this.symbol);

  /// Returns the currency of the country with the given [code].
  static Currency fromCode(String code) {
    return Currency.values.firstWhere(
      (c) => c.code == code.toUpperCase(),
      orElse: () =>
          throw CurrencyException("Currency with code $code not found"),
    );
  }

  /// Returns the currency of the country with the given [name].
  static Currency fromName(String name) {
    return Currency.values.firstWhere(
      (c) => c.name == name,
      orElse: () =>
          throw CurrencyException("Currency with name $name not found"),
    );
  }

  /// Returns the currency of the country with the given [symbol].
  static Currency fromSymbol(String symbol) {
    return Currency.values.firstWhere(
      (c) => c.symbol == symbol,
      orElse: () =>
          throw CurrencyException("Currency with symbol $symbol not found"),
    );
  }
}