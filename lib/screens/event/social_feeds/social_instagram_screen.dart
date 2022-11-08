import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SocialInstagramScreen extends StatelessWidget {
  const SocialInstagramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://www.instagram.com/gulfpetchem/',
      allowsInlineMediaPlayback: true,
      debuggingEnabled: true,
      zoomEnabled: true,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
