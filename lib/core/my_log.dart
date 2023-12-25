enum ConsoleColor { black, red, green, yellow, blue, magenta, cyan, white }

class ConsoleLogger {
  static void log(String message, ConsoleColor color) {
    final colorCode = _getColorCode(color);
    print("\x1B[$colorCode$message\x1B[0m");
  }

  static void info(String message, {ConsoleColor color = ConsoleColor.green}) {
    log("Info: $message", color);
  }

  static void warning(String message, {ConsoleColor color = ConsoleColor.yellow}) {
    log("Warning: $message", color);
  }

  static void error(String message, {ConsoleColor color = ConsoleColor.red}) {
    log("Error: $message", color);
  }

  static String _getColorCode(ConsoleColor color) {
    switch (color) {
      case ConsoleColor.black:
        return "30m";
      case ConsoleColor.red:
        return "31m";
      case ConsoleColor.green:
        return "32m";
      case ConsoleColor.yellow:
        return "33m";
      case ConsoleColor.blue:
        return "34m";
      case ConsoleColor.magenta:
        return "35m";
      case ConsoleColor.cyan:
        return "36m";
      case ConsoleColor.white:
        return "37m";
    }
  }
}
