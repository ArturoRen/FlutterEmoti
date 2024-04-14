extension CustomStringExtension on String {
  String toCamelCase() {
    // Split the string into words
    List<String> words = split(' ');

    // Convert each word except the first to title case and join them back together
    String camelCase = words.map((word) {
      int index = words.indexOf(word);
      if (index == 0) {
        return word.toLowerCase();
      } else {
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      }
    }).join('');

    return camelCase;
  }

  String capitalizeFirstLetter() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }
}
