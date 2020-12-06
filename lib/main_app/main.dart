import 'package:active_news/constant/route.dart';
import 'package:flutter/material.dart';
import 'app_page.dart';
import 'theme_data.dart';

/// Main app wrapper
class MainApp extends StatelessWidget {
  const MainApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      initialRoute: uiRoutes[UiRoutes.feeds],
      routes: uiRoutePages,
    );
  }
}
