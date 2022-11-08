import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SocialYoutubeScreen extends StatelessWidget {
  const SocialYoutubeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://www.youtube.com/user/GPCAorg',
      allowsInlineMediaPlayback: true,
      debuggingEnabled: true,
      zoomEnabled: true,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
