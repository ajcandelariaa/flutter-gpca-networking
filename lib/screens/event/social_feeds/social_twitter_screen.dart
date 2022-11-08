import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SocialTwitterScreen extends StatelessWidget {
  const SocialTwitterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://twitter.com/GulfPetChem',
      allowsInlineMediaPlayback: true,
      debuggingEnabled: true,
      zoomEnabled: true,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
