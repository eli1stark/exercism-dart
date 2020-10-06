import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int firstNatNum) {
    int result = 0;

    for (int i = 1; i <= firstNatNum; i++) {
      result += i;
    }

    return pow(result, 2).toInt();
  }

  int sumOfSquares(int firstNatNum) {
    int result = 0;

    for (int i = 1; i <= firstNatNum; i++) {
      result += pow(i, 2).toInt();
    }

    return result;
  }

  int differenceOfSquares(int firstNatNum) =>
      squareOfSum(firstNatNum) - sumOfSquares(firstNatNum);
}
