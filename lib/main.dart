import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(Cube());

class Cube extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'CUBE',
      home: CubeHomePage(),
    );
  }
}

class CubeHomePage extends StatefulWidget {
  @override
  _CubeHomePageState createState() => _CubeHomePageState();
}

class _CubeHomePageState extends State<CubeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://civarinu.github.io/CUBE-Web/#/home',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
