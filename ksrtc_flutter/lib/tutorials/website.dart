import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import "./utils.dart";
import 'dart:convert';
import 'package:flutter/services.dart';

class Website extends StatefulWidget {
  const Website({super.key});

  @override
  State<Website> createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: "www.amazon.in/",
      onWebViewCreated: (controller) {
        // this.controller = controller;
      },
      onPageStarted: (url) {
        // print(("New url : $"))
      },
    );
    // return WebView(
    //   initialUrl: "https://www.youtube.com/",
    //   javascriptMode: JavascriptMode.unrestricted,
    // );
  }
}

class WebViewTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WebViewTestState();
  }
}

class _WebViewTestState extends State<WebViewTest> {
  //
  late WebViewController _webViewController;
  String filePath = 'resources/maps.html';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        child: WebView(
          initialUrl: '',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _webViewController = webViewController;
            _loadHtmlFromAssets();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _webViewController.evaluateJavascript('add(10, 10)');
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileHtmlContents = await rootBundle.loadString(filePath);
    _webViewController.loadUrl(Uri.dataFromString(fileHtmlContents,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}
