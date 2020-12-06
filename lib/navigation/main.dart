import 'package:flutter/material.dart';
import 'app_page.dart';

/// Main app wrapper
class MainApp extends StatelessWidget {
  const MainApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: uiRoutePages,
    );
  }
}
