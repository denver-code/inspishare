class Config {
  static const bool debug = true;

  static String serverIp() {
    if (debug) {
      return "192.168.1.9:8000";
    }
    return "159.0.0.0.0";
  }

  static const String telegramSupportLink = "https://t.me/idenver_bot";

  static const String versionAPI = "v1";
}
