class MatchingBrackets {
  bool isPaired(String string) {
    // Step 1: declare bracket's shemes
    List<String> curlyBraceSheme = ['{', '}'];
    List<String> squareBracketSheme = ['[', ']'];
    List<String> parenthesesSheme = ['(', ')'];

    // Step 2: declare array for each bracket type
    List<String> curlyBraces = [];
    List<String> squareBrackets = [];
    List<String> parentheses = [];

    // Step 3: distribute brackets into their arrays
    for (String bracket in string.split('')) {
      if (curlyBraceSheme.contains(bracket)) {
        curlyBraces.add(bracket);
      } else if (squareBracketSheme.contains(bracket)) {
        squareBrackets.add(bracket);
      } else if (parenthesesSheme.contains(bracket)) {
        parentheses.add(bracket);
      }
    }

    // Step 4: create a function that parse each array
    // and output whether array is valid
    bool validateBracketArray(List<String> bracketArray, List<String> sheme) {
      int bracketArrayLength = bracketArray.length;

      // if bracketArrayLength is not even then there is no machting
      if (bracketArrayLength % 2 != 0) {
        return false;
      } else {
        // check brackets on match
        for (int i = 0; i < bracketArrayLength / 2; i++) {
          if (!(bracketArray[i] == sheme[0] &&
              bracketArray.reversed.toList()[i] == sheme[1])) {
            return false;
          }
        }
      }

      return true;
    }

    // Step 5: parse each array
    // Step 6: If all arrays are true then output is true else false
    if (!validateBracketArray(curlyBraces, curlyBraceSheme)) {
      return false;
    } else if (!validateBracketArray(squareBrackets, squareBracketSheme)) {
      return false;
    } else if (!validateBracketArray(parentheses, parenthesesSheme)) {
      return false;
    } 
    // all brackets are matched
    else {
      return true;
    }
  }
}
