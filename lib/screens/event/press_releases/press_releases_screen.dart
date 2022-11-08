import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PressReleasesScreen extends StatelessWidget {
  const PressReleasesScreen({Key? key}) : super(key: key);
  static const routeName = '/press-releases';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Press releases'),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: "https://www.gpca.org.ae/press-releases/",
        allowsInlineMediaPlayback: true,
        debuggingEnabled: true,
        zoomEnabled: true,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}