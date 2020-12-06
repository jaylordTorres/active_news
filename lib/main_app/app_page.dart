import 'package:flutter/material.dart';

import '../shared_class/main.dart';
import '../page/main.dart';

import '../constant/route.dart';

final _pages = [
  UiRouteItem(
    uiRoutes[ActivationPage.route],
    ActivationPage.route,
    (_) => ActivationPage(),
  ),
  UiRouteItem(
    uiRoutes[RootPage.route],
    RootPage.route,
    (_) => RootPage(),
  ),
  UiRouteItem(
    uiRoutes[FeedsPage.route],
    FeedsPage.route,
    (_) => FeedsPage(),
  ),
];

final Map<String, WidgetBuilder> uiRoutePages = Map.fromEntries(_pages
    .map((UiRouteItem page) =>
        MapEntry<String, WidgetBuilder>(page.path, page.builder))
    .toList());
