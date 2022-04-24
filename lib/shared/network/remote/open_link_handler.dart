import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class UrlHandler {
  /// Attempts to open the given [url] in in-app browser. Returns `true` after successful opening, `false` otherwise.
  static Future<bool> open(String url) async {
    try {
      await launch(
        url,
        enableJavaScript: true,
      );
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}