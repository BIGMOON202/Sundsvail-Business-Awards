// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:webview_flutter/webview_flutter.dart';

class CustomWebview extends StatefulWidget {
  const CustomWebview({
    super.key,
    this.width,
    this.height,
    required this.url,
    this.header,
  });

  final double? width;
  final double? height;
  final String url;
  final String? header;

  @override
  State<CustomWebview> createState() => _CustomWebviewState();
}

class _CustomWebviewState extends State<CustomWebview> {
  late WebViewController controller;
  double _progress = 0;
  @override
  void initState() {
    super.initState();

    // #docregion webview_controller
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            setState(() {
              _progress = progress / 100;
            });
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            setState(() {
              _progress = 1.0;
            });
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('${widget.url}'),
          headers:
              widget.header != '' ? {"Authorization": '${widget.header}'} : {});
    // #enddocregion webview_controller
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(controller: controller),
        if (_progress < 1.0)
          Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
