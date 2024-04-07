extension ListExtension<T> on List<T> {
  T getElementAtIndex(int index, T defaultValue) {
    if (index < length) {
      return this[index];
    } else {
      return defaultValue;
    }
  }
}