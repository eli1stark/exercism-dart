class ResistorColor {
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

  int colorCode(String submittedColor) {
    int counter = -1;
    for (String color in colors) {
      counter = counter + 1;
      if (color == submittedColor) {
        break;
      }
    }
    return counter;
  }
}
