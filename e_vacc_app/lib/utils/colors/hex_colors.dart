import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    final String _ = hexColor.toUpperCase();
    // ignore: parameter_assignments
    String _hexColor = _.replaceAll("#", "");
    if (_hexColor.length == 6) {
      _hexColor = "FF$_hexColor";
    }
    return int.parse(_hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
