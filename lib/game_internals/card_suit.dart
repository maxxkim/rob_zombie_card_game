enum CardSuit {
  clubs(1),
  spades(2),
  hearts(3),
  diamonds(4);

  final int internalRepresentation;

  const CardSuit(this.internalRepresentation);

  String get asCharacter {
    switch (this) {
      case CardSuit.spades:
        return '🥰';
      case CardSuit.hearts:
        return '😍';
      case CardSuit.diamonds:
        return '😘';
      case CardSuit.clubs:
        return '😌';
    }
  }

  CardSuitColor get color {
    switch (this) {
      case CardSuit.spades:
      case CardSuit.clubs:
        return CardSuitColor.black;
      case CardSuit.hearts:
      case CardSuit.diamonds:
        return CardSuitColor.red;
    }
  }

  @override
  String toString() => asCharacter;
}

enum CardSuitColor {
  black,
  red,
}
