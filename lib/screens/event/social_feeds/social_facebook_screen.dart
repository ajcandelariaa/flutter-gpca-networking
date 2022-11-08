import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SocialFacebookScreen extends StatelessWidget {
  const SocialFacebookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://www.facebook.com/GulfPetChem',
      allowsInlineMediaPlayback: true,
      debuggingEnabled: true,
      zoomEnabled: true,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
