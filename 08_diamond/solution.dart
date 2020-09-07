class Diamond {
  List<String> rows(String letter) {
    // submitted letter in the form of its index
    int indexOfSubmittedLetter = 0;

    // List of letters that will form a diamond
    List<String> diamondLetters = [];

    // List of strings that will form a first part of the diamond
    List<String> diamondPart1 = [];

    // List of strings that will form the diamond
    List<String> diamond = [];

    // check for submitted letter
    for (String englishLetter in englishLetters) {
      diamondLetters.add(englishLetter);
      if (letter == englishLetter) {
        indexOfSubmittedLetter = englishLetters.indexOf(englishLetter);
        break;
      }
    }

    // counter of the 'Submitted Letter'
    int submittedLetterCounter = 0;

    // middle space of the letters other than 'A' and 'Submitted Letter'
    int middleSpace = 1;

    // side space of the letters other than 'A' and 'Submitted Letter'
    int sideSpace = indexOfSubmittedLetter - 1;

    // iterate through the first part of the DIAMOND
    for (int i = 0; i < diamondLetters.length; i++) {
      // aka 'A'
      if (i == 0) {
        int times = indexOfSubmittedLetter;
        // add String to the List
        diamondPart1.add(' ' * times + diamondLetters[i] + ' ' * times);

        // increase counter of the 'Submitted Letter'
        submittedLetterCounter++;
      }
      // aka 'Submitted Letter'
      else if (i == indexOfSubmittedLetter) {
        // calculate counter
        int times = submittedLetterCounter * 2 - 1;
        // add String to the List
        diamondPart1.add(diamondLetters[i] + ' ' * times + diamondLetters[i]);
      }
      // aka any other letter
      else {
        // add String to the List
        diamondPart1.add(
          ' ' * sideSpace +
              diamondLetters[i] +
              ' ' * middleSpace +
              diamondLetters[i] +
              ' ' * sideSpace,
        );

        // increase counter of the 'Submitted Letter'
        submittedLetterCounter++;

        // increase middle space
        middleSpace = middleSpace + 2;

        // decrease side space
        sideSpace--;
      }
    }

    // trasfering data from the first part to the original diamond
    diamond = diamondPart1;

    // reverse first part of the diamond and add it to the original diamond
    for (int i = indexOfSubmittedLetter - 1; i >= 0; i--) {
      diamond.add(diamondPart1[i]);
    }

    return diamond;
  }
}

// English letters (26)
List<String> englishLetters = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z'
];
