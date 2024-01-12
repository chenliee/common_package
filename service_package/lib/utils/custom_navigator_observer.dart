import 'package:flutter/cupertino.dart';

class CustomNavigatorObserver extends NavigatorObserver {
  static final _observerUtil = CustomNavigatorObserver._internal();
  final RouteObserver<PageRoute> _routeObserver = RouteObserver();
  factory CustomNavigatorObserver() {
    return _observerUtil;
  }
  CustomNavigatorObserver._internal();
  RouteObserver<PageRoute> get routeObserver => _routeObserver;

  static final navStack = <RouteStackItem>[];

  @override
  void didPop(Route route, Route? previousRoute) {
    if (previousRoute != null) {
      navStack.removeLast();
    }
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    navStack.add(RouteStackItem.fromRoute(route));
    super.didPush(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    if (previousRoute != null) {
      navStack.removeLast();
    }
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    if (oldRoute != null) {
      navStack.removeLast();
    }
    if (newRoute != null) {
      navStack.add(RouteStackItem.fromRoute(newRoute));
    }
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {}

  @override
  void didStopUserGesture() {}
}

class RouteStackItem {
  final Route? route;
  final String? name;
  final Object? args;

  const RouteStackItem({
    required this.route,
    required this.name,
    required this.args,
  });

  factory RouteStackItem.fromRoute(Route route) => RouteStackItem(
      route: route, name: route.settings.name, args: route.settings.arguments);
}
