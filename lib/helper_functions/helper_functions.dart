import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

void shareArticle(String? title, String? url) {
  if (title != null && url != null) {
    Share.share('$title\nCheck out this article: $url');
  } else {
    throw "Cannot share the article without a valid title or URL";
  }
}

void launchURL(String? url) async {
  if (url != null) {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw "Could not launch $url";
    }
  }
}