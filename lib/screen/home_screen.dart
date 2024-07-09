import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  String homeUrl = 'https://www.peanuts.com';
  WebViewController webViewController = WebViewController()
    ..loadRequest(Uri.parse('https://www.peanuts.com'))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            'Snoopy World',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  webViewController.loadRequest(Uri.parse(homeUrl));
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ))
          ],
        ),
        body: WebViewWidget(
          controller: webViewController,
        ));
  }
}
