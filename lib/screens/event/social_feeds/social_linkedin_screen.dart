import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SocialLinkedinScreen extends StatelessWidget {
  const SocialLinkedinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://www.linkedin.com/company/gulf-petrochemicals-and-chemicals-association-gpca-/mycompany/',
      allowsInlineMediaPlayback: true,
      debuggingEnabled: true,
      zoomEnabled: true,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
