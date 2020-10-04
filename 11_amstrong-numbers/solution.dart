import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    List<String> splittedString = number.toString().split('');

    int sum = 0;

    for (int i = 0; i < splittedString.length; i++) {
      sum += pow(int.parse(splittedString[i]), splittedString.length).toInt();
    }

    if (sum == number) {
      return true;
    } else {
      return false;
    }
  }
}
