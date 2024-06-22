
import 'package:bookly/core/functions/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';



Future<void> launchUr(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showSnackBar(context, 'Cannot launch $url');
    }
  }
}