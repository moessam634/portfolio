import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/web.dart' as web;

class UrlUtils {
  static Future<void> _launch(Uri uri) async {
    try {
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        debugPrint('Could not launch $uri');
      }
    } catch (e) {
      debugPrint('Error launching $uri: $e');
    }
  }

  static Future<void> launchExternalUrl(String url) async {
    final uri = Uri.parse(url);
    await _launch(uri);
  }

  static Future<void> launchEmail(String email) async {
    final uri = Uri(scheme: 'mailto', path: email);
    await _launch(uri);
  }

  static Future<void> launchWhatsApp({
    required String phoneNumber,
    String message = '',
  }) async {
    final uri = Uri.parse(
        'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}');
    await _launch(uri);
  }

  // // static void platformForceDownload(String url, String filename) {
  // //   html.AnchorElement(href: url)
  // //     ..setAttribute('download', filename)
  // //     ..click();
  // // }
  //
  // static void platformForceDownload(String url, String filename) {
  //   final anchor = web.HTMLAnchorElement()
  //     ..href = url
  //     ..setAttribute('download', filename);
  //   anchor.click();
  // }
  static void openInNewTab(String url) {
    web.window.open(url, '_blank');
  }
}
