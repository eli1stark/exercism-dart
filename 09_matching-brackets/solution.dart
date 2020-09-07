class MatchingBrackets {
  bool isPaired(String string) {
    // declare seperate buckets for symbols
    List<String> brackets = [];
    List<String> braces = [];
    List<String> parentheses = [];

    // iterate through string and sort each symbol
    for (int i = 0; i < string.length; i++) {
      if (string[i] == '[' || string[i] == ']') {
        brackets.add(string[i]);
      } else if (string[i] == '{' || string[i] == '}') {
        braces.add(string[i]);
      } else if (string[i] == '(' || string[i] == ')') {
        parentheses.add(string[i]);
      }
    }

    bool processSymbols(
      List<String> symbols,
      String openedSymbol,
      String closedSymbol,
    ) {
      // saving the last position of the iteration
      int symbolCounter = 0;

      // number of pairs
      int pairs = 0;

      // iterate through list of symbols
      for (String symbol in symbols) {
        if (symbol == openedSymbol) {
          // start iteration from the last save
          for (int j = symbolCounter; j < symbols.length; j++) {
            // if symbol is matching
            if (symbols[j] == closedSymbol) {
              // add a new pair
              pairs++;
              // save the last position
              symbolCounter = j + 1;
              break;
            }
          }
        }
      }

      bool symbolStatus = false;
      List<String> newList = symbols;

      // delete pairs from list
      for (pairs; pairs > 0; pairs--) {
        newList.remove(openedSymbol);
        newList.remove(closedSymbol);
      }

      // if list is empty return true
      if (newList.length > 0) {
        symbolStatus = false;
      } else {
        symbolStatus = true;
      }

      return symbolStatus;
    }

    if (processSymbols(brackets, '[', ']') == false ||
        processSymbols(braces, '{', '}') == false ||
        processSymbols(parentheses, '(', ')') == false) {
      return false;
    } else {
      return true;
    }
  }
}
