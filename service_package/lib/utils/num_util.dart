class NumUtil {
  static String toStringAxFixed2(double number) =>
      ((number * 10).roundToDouble() / 10).toStringAsFixed(2);
}
