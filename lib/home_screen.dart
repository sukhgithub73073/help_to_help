import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WebViewPlusController? _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //

      body: WebViewPlus(
        serverPort: 5353,
        javascriptChannels: null,
        initialUrl: 'www.help2help.net',
        onWebViewCreated: (controller) {
          _controller = controller;
        },
        onPageFinished: (url) {
          _controller?.getHeight().then((double height) {

          });
        },
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
