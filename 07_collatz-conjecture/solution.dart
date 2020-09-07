class CollatzConjecture {
  int steps(double newNumber) {
    // declare number of steps
    int steps = 0;

    // validate submitted number
    double validate(double newNumber) {
      if (newNumber == 0 || newNumber < 0) {
        throw Exception('Only positive numbers are allowed');
      } else {
        return newNumber;
      }
    }

    // catching error
    try {
      double number = validate(newNumber);
      if (newNumber != 1) {
        do {
          if (number % 2 == 0) {
            number = number / 2;
            steps++;
          } else {
            number = number * 3 + 1;
            steps++;
          }
        } while (number != 1);
      }
    } catch (e) {
      steps = null;
    }

    return steps;
  }
}
