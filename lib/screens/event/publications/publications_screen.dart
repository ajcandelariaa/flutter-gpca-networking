import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PublicationsScreen extends StatelessWidget {
  const PublicationsScreen({Key? key}) : super(key: key);
  static const routeName = '/publications';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Publications'),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'https://www.gpca.org.ae/publications/',
        allowsInlineMediaPlayback: true,
        debuggingEnabled: true,
        zoomEnabled: true,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}