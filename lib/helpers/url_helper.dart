import 'package:url_launcher/url_launcher.dart';

class UrlHelper {
  static Future<bool> launchURL(String url) async {
    final uri = Uri.parse(url);

    try {
      await launchUrl(uri);
      return true;
    } catch (e) {
      return false;
    }
  }
}
