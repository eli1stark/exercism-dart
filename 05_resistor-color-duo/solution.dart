class ResistorColorDuo {
  List<String> colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  String colorCode(String submittedColor) {
    int counter = -1;
    for (String color in colors) {
      counter = counter + 1;
      if (color == submittedColor) {
        break;
      }
    }
    return counter.toString();
  }

  int value(List<String> submittedColors) {
    String value = '';
    for (var i = 0; i < 2; i++) {
      value = colorCode(submittedColors[0]) + colorCode(submittedColors[1]);
    }
    return int.parse(value);
  }
}
